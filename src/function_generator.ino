#include <SPI.h>
#include "function_generator_ui.h"
#include "button.h"
#include "Display_OLED.h"
#include "AD_DA_Converters.h"

#include "ArxTypeTraits.h"

static const int SERIAL_BAUD_RATE = 9600;

static const size_t BUFLEN = 64;
char msg_buf[BUFLEN];

template <typename... Args>
void serial_log(const char *fmt, Args... args)
{
	snprintf(msg_buf, BUFLEN, fmt, args...);
	Serial.println( msg_buf );
}

//  -----------------------------------------------

SPISettings settings(1000000, MSBFIRST, SPI_MODE0);

//  -----------------------------------------------

static const int PIN_RANDOM_SEED = 26; // ADC0

/*
static const double V_REF = 5.0;
*/

const int PIN_DA_CS = 10;
const int PIN_DA_CS_2 = 14;
const int PIN_DA_CS_3 = 15;
const int PIN_DA_CS_4 = 16;

const int PIN_DA_LATCH = 11;

static const int PIN_ROTARY_SW1 = 7;
static const int PIN_ROTARY_SW2 = 6;
static const int PIN_BUTTON = 8;
static const int PIN_CLOCK = 9;

static const int PIN_CV1 = 27; // ADC1
static const int PIN_CV2 = 28; // ADC2


//  -----------------------------------------------

Display_OLED display;

//  -----------------------------------------------

MCP4922 dac1(settings, PIN_DA_CS, PIN_DA_LATCH);
MCP4922 dac2(settings, PIN_DA_CS_2, PIN_DA_LATCH);
MCP4922 dac3(settings, PIN_DA_CS_3, PIN_DA_LATCH);
MCP4922 dac4(settings, PIN_DA_CS_4, PIN_DA_LATCH);

//  -----------------------------------------------

/*
Channel> app_channel
Free>
  Frequency> app_freq
	<Back
Synchronize>
	Source> app_src
  Multiply> app_mult
  Phase> app_phase
	<Back
Function>
	[sin]
	[saw]
	[tri]
	[sq]
	AR envelope>
		Attack> app_are_attack
		Release> app_are_release
		<Back
	<Back
Pattern>
	[Off]
	Euclidean>
		Length> app_euc_len
		Number> app_euc_num
		Shift> app_euc_sft
		<Back
	<Back
Polarity> app_polarity (not implemented yet)
CV1>
	Channel> app_cv1_channel (ChannelApp)
	Function> app_cv1
		[Off]
		[Freq]
		[Multiplicity]
		[Phase]
		[Function]
		[Attack]
		[Release]
		[Euclidean_len]
		[Euclidean_num]
		[Euclidean_sft]
CV2> app_cv2
	Channel> app_cv2_channel
	Function> app_cv2
*/

//  -----------------------------------------------

void show_cvconfig(const CVConfig &cfg)
{
	serial_log("----");
	serial_log("channel: %d", cfg.ch);
	serial_log("freq: %d", cfg.freq);
	serial_log("Mult: %d Phase: %d", cfg.mult, cfg.phase);
	serial_log("Func: %d Attack: %d Release: %d", cfg.func, cfg.are_attack, cfg.are_release);
	serial_log("Len: %d Num: %d Shift: %d", cfg.euc_len, cfg.euc_num, cfg.euc_sft);
}

Menu_Channel menu_channel;

Menu_Free menu_free;
Menu_Freq menu_freq;

Menu_Sync menu_sync;
Menu_Src menu_src;
Menu_Mult menu_mult;
Menu_Phase menu_phase;

MenuApp app_menu(&menu_channel, &display);

Menu_Back menu_free_back("<Back", &app_menu);
Menu_Back menu_sync_back("<Back", &app_menu);

Menu_Func menu_func;
Menu_Func_sin menu_func_sin;
Menu_Func_saw menu_func_saw;
Menu_Func_tri menu_func_tri;
Menu_Func_sq menu_func_sq;
Menu_Func_ARE menu_func_are;
Menu_Func_ARE_Attack menu_func_are_attack;
Menu_Func_ARE_Release menu_func_are_release;
Menu_Back menu_func_are_back("<Back", &app_menu);
Menu_Back menu_func_back("<Back", &app_menu);

Menu_Pattern menu_ptn;
Menu_Pattern_Off menu_ptn_off;
Menu_Pattern_Euclidean menu_ptn_euc;
Menu_Back menu_ptn_back("<Back", &app_menu);

Menu_Pattern_Euclidean_Length menu_ptn_euc_len;
Menu_Pattern_Euclidean_Number menu_ptn_euc_num;
Menu_Pattern_Euclidean_Shift menu_ptn_euc_sft;
Menu_Back menu_ptn_euc_back("<Back", &app_menu);

// ---------

template <int N, typename Head, typename... Tail>
struct Take
{
	static_assert(N > 1, "N must be equal to or larger than 1.");
	using type = typename Take<N-1, Tail...>::type;
};

template <typename Head, typename... Tail>
struct Take<1, Head, Tail...>
{
	using type = typename std::tuple<Tail...>;
};

template <int M, int N, typename... T>
struct Cdrer
{
	static typename Take<M-N, T...>::type get(const std::tuple<T...> &t) {
		return std::tuple_cat( std::make_tuple(std::get<M-N>(t)),  Cdrer<M, N-1, T...>::get(t) );
	}
};

template <int M, typename... T>
struct Cdrer<M, 1, T...>
{
	static typename Take<M-1, T...>::type get(const std::tuple<T...> &t) {
		return std::make_tuple(std::get<M-1>(t));
	}
};


template <typename Head, typename... Rest>
std::tuple<Rest...> cdr(const std::tuple<Head, Rest...> &t) {
	return Cdrer<sizeof...(Rest)+1, sizeof...(Rest), Head, Rest...>::get(t);
}

template <typename Head, typename... Tail>
void unset(CVConfig *p, const std::tuple<Head, Tail...> &args)
{
	auto &head = std::get<0>(args);
	p->*head = false;
	unset(p, cdr(args));
}

template <typename Head>
void unset(CVConfig *p, const std::tuple<Head> &args)
{
	auto &head = std::get<0>(args);
	p->*head = false;
}

template <typename... Rest>
void exclusive_set(CVConfig *p, bool CVConfig::*memp, const std::tuple<Rest...> &args)
{
	unset(p, args);
	p->*memp = true;
}

// ---------

auto gp = std::make_tuple(
	&CVConfig::euc_len
	, &CVConfig::freq, &CVConfig::mult, &CVConfig::are_attack, &CVConfig::euc_num
	, &CVConfig::func, &CVConfig::phase, &CVConfig::are_release, &CVConfig::euc_sft
);

auto set_gp = [](CVConfig *p, bool CVConfig::*memp) { exclusive_set(p, memp, gp); };

constexpr const size_t CV_NUM = 2;
CVConfig cvc[CV_NUM];

#define CreateAppCv(name, ch) \
CVApp<10> name( \
	{"Off" \
		, "Frequency" \
		, "Multiplicity" \
		, "Phase" \
		, "Function" \
		, "Attack" \
		, "Release" \
		, "Euclidean_len" \
		, "Euclidean_num" \
		, "Euclidean_sft" \
	}, \
	{ \
		[](){unset(&cvc[ch], gp);} \
		, [](){set_gp(&cvc[ch], &CVConfig::freq);} \
		, [](){set_gp(&cvc[ch], &CVConfig::mult);} \
		, [](){set_gp(&cvc[ch], &CVConfig::phase);} \
		, [](){set_gp(&cvc[ch], &CVConfig::func);} \
		, [](){set_gp(&cvc[ch], &CVConfig::are_attack);} \
		, [](){set_gp(&cvc[ch], &CVConfig::are_release);} \
		, [](){set_gp(&cvc[ch], &CVConfig::euc_len);} \
		, [](){set_gp(&cvc[ch], &CVConfig::euc_num);} \
		, [](){set_gp(&cvc[ch], &CVConfig::euc_sft);} \
});

CreateAppCv(app_cv1, 0);
CreateAppCv(app_cv2, 1);

Menu_CV_Base menu_cv1_base("CV1>");
Menu_CV_Base menu_cv2_base("CV2>");

ChannelApp app_cv1_channel;
ChannelApp app_cv2_channel;
ChannelApp *app_cv_c[CV_NUM] = {
	&app_cv1_channel, &app_cv2_channel
};

Menu_CV_Channel menu_cv1_channel(app_cv_c[0]);
Menu_CV_Channel menu_cv2_channel(app_cv_c[1]);

Menu_CV menu_cv1("Function>", &app_cv1);
Menu_CV menu_cv2("Function>", &app_cv2);

Menu_Back menu_cv1_back("<Back", &app_menu);
Menu_Back menu_cv2_back("<Back", &app_menu);

ChannelApp app_channel;
FreqApp app_freq;

SrcApp app_src;
MultApp app_mult;
PhaseApp app_phase;

FuncApp app_func;
ARE_Attack_App app_func_are_attack;
ARE_Release_App app_func_are_release;

PatternController ptnctl;
Euclid_Len_App app_euc_len;
Euclid_Num_App app_euc_num;
Euclid_Sft_App app_euc_sft;

Application *app = &app_menu;

//  -----------------------------------------------

class RSW_cmd : public RotarySwitch
{
public:
	RSW_cmd(int pin_1, int pin_2)
		: RotarySwitch(pin_1, pin_2)
	{}

private:
	virtual void onRotarySW(RSW_DIR dir) override
	{
		if (app) app->onRotarySW(dir);
	}
};

RSW_cmd rsw1(PIN_ROTARY_SW1, PIN_ROTARY_SW2);

//  -----------------------------------------------

class Button_func : public Button
{
public:
	Button_func(int pin)
		: Button(pin)
	{}

private:
	virtual void onButton(int state) override
	{
		if (app) app->onButton(state);
	}
};

Button_func button_1(PIN_BUTTON);

//  -----------------------------------------------

void onRotary() {
	rsw1.callback();
}

void onButton() {
	button_1.callback();
}

volatile unsigned long prev_clock = 0;

void onClock()
{
	if (digitalRead(PIN_CLOCK) == HIGH) {
		unsigned long cur = micros();
		auto period = cur - prev_clock;
		//display.show_app_msg("clock %5.1f Hz, %5.1f bpm", 1e6/(double)period, 60e6/(double)period);

		auto f = 1e6/(double)period; // freqeuncy of the clock
		auto p = cur % period; // phase of the clock
		//serial_log("%7d %7d %7.3f %d", cur, period, f, cur % period);

		// synchronize frequency and phase with external clock
		for (size_t ch = 0; ch < ChannelApp::ChannelMax; ++ch) {
			if (app_freq.sync_mode(ch) == FreqApp::Sync_ExtClock) {
				app_freq.set_param(ch, f, p);
			}
		}

		prev_clock = cur;
	}
}

//  -----------------------------------------------

void onPeriodStarts(size_t ch)
{
	// synchronize frequency and phase with selected channel
	auto f = app_freq.get_frequency(ch);
	auto p = app_freq.get_phase(ch);
	for (size_t s = 0; s < ChannelApp::ChannelMax; ++s) {
		if (app_freq.sync_mode(s) == (FreqApp::SyncType)ch) {
			app_freq.set_param(s, f, p);
		}
	}

	ptnctl.notify(ch);
}

//  -----------------------------------------------

volatile unsigned long prev = 0;
volatile unsigned int cnt = 0;
constexpr const size_t MEAN_WIDTH = 40;

#undef MEASUREMENT
#ifdef MEASUREMENT
volatile unsigned long buf[MEAN_WIDTH];
#endif // MEASUREMENT

static void emit(size_t ch, unsigned long cur)
{
	if (app_freq.check_new_period(ch, cur)) {
		onPeriodStarts(ch);
	}

	double out = 0;
	if (ptnctl.enabled(ch)) {
		auto func = app_func.get_function(ch);
		auto freq = app_freq.get_frequency(ch);
		auto p = app_freq.get_phase(ch);

		if (app_freq.sync_mode(ch) != FreqApp::Free) {
			auto coeff = app_mult.get_coeff(ch);
			auto factor = app_phase.get_factor(ch);
			out = func(cur, freq*coeff, p + 1e6/freq/8.0*factor);
		} else {
			out = func(cur, freq, p);
		}
	}

	MCP4922 *dac;
	if (ch < 2) dac = &dac1;
	else if (ch < 4) dac = &dac2;
	else if (ch < 6) dac = &dac3;
	else if (ch < 8) dac = &dac4;

	if (ch % 2 == 0) {
		dac->emit(out, Channel_A);
	} else {
		dac->emit(out, Channel_B);
	}
}

bool onTimer(repeating_timer_t *	)
{
	unsigned long cur = micros();

#ifdef MEASUREMENT
	auto delta_t = cur - prev;
	buf[cnt] = delta_t;
#endif // MEASUREMENT

	const auto ch = app_channel.get_current_channel();

	// calculate mean looping time of recent MEAN_WIDTH
	if (++cnt >= MEAN_WIDTH) {
#ifdef MEASUREMENT
		double sum = 0;
		for (int i = 0; i < MEAN_WIDTH; ++i) sum += buf[i];
		sum /= (double)MEAN_WIDTH;
#endif // MEASUREMENT

#ifdef MEASUREMENT
		display.show_status(
			"%3.0f us %5.1f Hz", sum, 1e6/sum
		);
#else // MEASUREMENT
		auto mode = app_freq.sync_mode(ch);
		if (mode != FreqApp::Free) {
			display.show_status(
				"%u:%s %s %s%d +%d", ch+1, app_func.get_func_name(ch)
				, get_source_name(mode)
				, app_mult.get_sign(ch), app_mult.get_factor(ch)
				, app_phase.get_factor(ch)
			);

		} else {
			const auto freq = app_freq.get_frequency(ch);
			display.show_status(
				"%u:%s %4.1fHz %3.0fbpm", ch+1, app_func.get_func_name(ch)
				, freq, freq*60
			);
		}
#endif // MEASUREMENT

		//serial_log("%d", analogRead(PIN_CV1));

		cnt = 0;
	}

	for (size_t ch = 0; ch < ChannelApp::ChannelMax; ++ch) {
		emit(ch, cur);
	}

	prev = cur;

	return true;
}

repeating_timer_t timer_data;

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

	randomSeed(analogRead(PIN_RANDOM_SEED));

	pinMode(PIN_DA_CS, OUTPUT);
	pinMode(PIN_DA_CS_2, OUTPUT);
	pinMode(PIN_DA_CS_3, OUTPUT);
	pinMode(PIN_DA_CS_4, OUTPUT);
	pinMode(PIN_DA_LATCH, OUTPUT);

	pinMode(PIN_ROTARY_SW1, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_ROTARY_SW1), onRotary, CHANGE);
	pinMode(PIN_ROTARY_SW2, INPUT);

	pinMode(PIN_CLOCK, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_CLOCK), onClock, CHANGE);

	pinMode(PIN_BUTTON, INPUT_PULLUP);
	attachInterrupt(digitalPinToInterrupt(PIN_BUTTON), onButton, CHANGE);

	menu_channel.add_sibling(&menu_free);
	menu_free.add_sibling(&menu_sync);
	menu_sync.add_sibling(&menu_func);
	menu_func.add_sibling(&menu_ptn);
	menu_ptn.add_sibling(&menu_cv1_base);
	menu_cv1_base.add_sibling(&menu_cv2_base);

	menu_free.add_child(&menu_freq);
	menu_freq.add_sibling(&menu_free_back); // add_sibling should follow add_child.

	menu_sync.add_child(&menu_src);
	menu_src.add_sibling(&menu_mult);
	menu_mult.add_sibling(&menu_phase); // add_sibling should follow add_child.
	menu_phase.add_sibling(&menu_sync_back); // add_sibling should follow add_child.

	menu_func.add_child(&menu_func_sin);
	menu_func_sin.add_sibling(&menu_func_saw);
	menu_func_saw.add_sibling(&menu_func_tri);
	menu_func_tri.add_sibling(&menu_func_sq);
	menu_func_sq.add_sibling(&menu_func_are);
	menu_func_are.add_sibling(&menu_func_back);

	menu_func_are.add_child(&menu_func_are_attack);
	menu_func_are_attack.add_sibling(&menu_func_are_release);
	menu_func_are_release.add_sibling(&menu_func_are_back);

	menu_ptn.add_child(&menu_ptn_off);
	menu_ptn_off.add_sibling(&menu_ptn_euc);
	menu_ptn_euc.add_sibling(&menu_ptn_back);

	menu_ptn_euc.add_child(&menu_ptn_euc_len);
	menu_ptn_euc_len.add_sibling(&menu_ptn_euc_num);
	menu_ptn_euc_num.add_sibling(&menu_ptn_euc_sft);
	menu_ptn_euc_sft.add_sibling(&menu_ptn_euc_back);

	menu_cv1_base.add_child(&menu_cv1_channel);
	menu_cv1_channel.add_sibling(&menu_cv1);
	menu_cv1.add_sibling(&menu_cv1_back);

	menu_cv2_base.add_child(&menu_cv2_channel);
	menu_cv2_channel.add_sibling(&menu_cv2);
	menu_cv2.add_sibling(&menu_cv2_back);

	SPI.begin();

	display.init();
	display.show_menu(app_menu.get_current()->get_title());

	add_repeating_timer_us(250, onTimer, 0, &timer_data);
}

void loop() {
	//display.test();

	// graphics functions cannot be called in interruption callbacks.
	display.display(
		[&](){
			display.show_menu();
		}
	);
}
