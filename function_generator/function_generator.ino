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

static const int pol_pins[] = {
	0			// ch 1
	, 1		// ch 2
	, 2		// ch 3
	, 3		// ch 4
	, 22	// ch 5
	, 13	// ch 6
	, 20	// ch 7
	, 21	// ch 8
};

//  -----------------------------------------------

Display_OLED display;

//  -----------------------------------------------

MCP4922 dac1(settings, PIN_DA_CS, PIN_DA_LATCH);
MCP4922 dac2(settings, PIN_DA_CS_2, PIN_DA_LATCH);
MCP4922 dac3(settings, PIN_DA_CS_3, PIN_DA_LATCH);
MCP4922 dac4(settings, PIN_DA_CS_4, PIN_DA_LATCH);

//  -----------------------------------------------

char sbuf1[Display_OLED::TMPLEN];
char sbuf2[Display_OLED::TMPLEN];
char sbuf3[Display_OLED::TMPLEN];
char sbuf4[Display_OLED::TMPLEN];

char *status_buf[4] = {sbuf1, sbuf2, sbuf3, sbuf4};

template <typename... Args>
void show_status(size_t column, const char *fmt, Args... args)
{
	snprintf(status_buf[column], Display_OLED::TMPLEN, fmt, args...);
}

/*
Channel> app_channel
Free>
  Frequency> app_freq (set_mode(FreqApp::FREQ_MODE))
  BPM> app_freq (set_mode(FreqApp::BPM_MODE))
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
Polarity> app_polarity (not implemented yet)
Pattern>
	[Off]
	Euclidean>
		Length> app_euc_len
		Number> app_euc_num
		Shift> app_euc_sft
		<Back
	<Back
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

Menu_Channel menu_channel;

Menu_Free menu_free;
Menu_Freq menu_freq;
Menu_BPM menu_bpm;

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

Menu_Polarity menu_pol;

Menu_Pattern menu_ptn;
Menu_Pattern_Off menu_ptn_off;
Menu_Pattern_Euclidean menu_ptn_euc;
Menu_Back menu_ptn_back("<Back", &app_menu);

Menu_Pattern_Euclidean_Length menu_ptn_euc_len;
Menu_Pattern_Euclidean_Number menu_ptn_euc_num;
Menu_Pattern_Euclidean_Shift menu_ptn_euc_sft;
Menu_Back menu_ptn_euc_back("<Back", &app_menu);

// ---------

template <typename T>
struct BitFlagCtrl
{
	static void clear(T &data)
	{
		data.flags = 0;
	}

	static void show(const T &data)
	{
/* only for debugging
		for (size_t i = 0; i < sizeof(T::type)*8; ++i) {
			std::cout << ((data.flags >> i) & 1) << " ";
		}
		std::cout << std::endl;
// */
	}

	static void set(T &data, size_t idx)
	{
		data.flags |= (1 << idx);
	}

	static void eset(T &data, size_t idx)
	{
		clear(data);
		set(data, idx);
	}

	static void unset(T &data, size_t idx)
	{
		data.flags &= ~(1 << idx);
	}

	static bool check(const T &data, size_t idx)
	{
		return (data.flags >> idx) & 1;
	}
};

using CVCtrl = BitFlagCtrl<CVConfig>;

void show_cvconfig(const CVConfig &cfg)
{
	serial_log("----");
	for (size_t i = 0; i < 10; ++i) {
		serial_log("%d: %d ", i, (cfg.flags >> i) & 1);
	}
	serial_log("\n");
}

// ---------

constexpr const size_t CV_NUM = 2;
CVConfig cvc[CV_NUM];

#define CreateAppCv(name, ch) \
CVApp<11> name( \
	{"Off" \
		, "Freq" \
		, "Mult" \
		, "Phas" \
		, "Func" \
		, "Atak" \
		, "Rels" \
		, "ELen" \
		, "ENum" \
		, "ESft" \
		, "Back" \
	}, \
	{ \
		[](){CVCtrl::clear(cvc[ch]);} \
		, [](){CVCtrl::eset(cvc[ch], Freq);} \
		, [](){CVCtrl::eset(cvc[ch], Mult);} \
		, [](){CVCtrl::eset(cvc[ch], Phase);} \
		, [](){CVCtrl::eset(cvc[ch], Func);} \
		, [](){CVCtrl::eset(cvc[ch], Attack);} \
		, [](){CVCtrl::eset(cvc[ch], Release);} \
		, [](){CVCtrl::eset(cvc[ch], Euc_Len);} \
		, [](){CVCtrl::eset(cvc[ch], Euc_Num);} \
		, [](){CVCtrl::eset(cvc[ch], Euc_Sft);} \
		, [](){} \
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

PolarityApp app_pol;

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

void apply_cv(const CVConfig *p, size_t ch, size_t value)
{
	if (CVCtrl::check(*p, Freq)) app_freq.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Mult)) app_mult.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Phase)) app_phase.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Func)) app_func.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Attack)) app_func_are_attack.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Release)) app_func_are_release.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Euc_Len)) app_euc_len.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Euc_Num)) app_euc_num.apply_cv(ch, value);
	else if (CVCtrl::check(*p, Euc_Sft)) app_euc_sft.apply_cv(ch, value);
}

static void emit(size_t ch, unsigned long cur)
{
	if (app_freq.check_new_period(ch, cur)) {
		onPeriodStarts(ch);
	}

	double out = 0;
	if (ptnctl.enabled(ch)) {

		//* apply values from CV if needed
		for (int i = 0; i < CV_NUM; ++i) {
			if (cvc[i].flags && app_cv_c[i]->get_current_channel() == ch) {
				auto value = analogRead(i == 0 ? PIN_CV1 : PIN_CV2);
				apply_cv(&cvc[i], ch, value);
			}
		}
		// */

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

		if (app_pol.get_mode(ch) == PolarityApp::Unipolar) digitalWrite(pol_pins[ch], HIGH);
		else digitalWrite(pol_pins[ch], LOW);
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
		show_status(0,
			"%3.0f us %5.1f Hz", sum, 1e6/sum
		);
#else // MEASUREMENT
		auto mode = app_freq.sync_mode(ch);
		if (mode != FreqApp::Free) {

			show_status(0,
				"%u:%s:%s %s", ch+1, app_func.get_func_name(ch)
				, app_pol.get_mode_msg(ch)
				, get_source_name(mode)
			);

			show_status(1,
				"  %s%d +%d"
				, app_mult.get_sign(ch), app_mult.get_factor(ch)
				, app_phase.get_factor(ch)
			);

			ptnctl.get_msg(ch, status_buf[2], Display_OLED::TMPLEN);

		} else {
			const auto freq = app_freq.get_frequency(ch);

			show_status(0,
				"%u:%s:%s ", ch+1, app_func.get_func_name(ch)
				, app_pol.get_mode_msg(ch)
			);

			show_status(1,
				"  %4.1fHz %3.0fbpm"
				, freq, freq*60
			);

			ptnctl.get_msg(ch, status_buf[2], Display_OLED::TMPLEN);

		}

		{
			char msg1[16];
			char msg2[16];

			memset(msg1, 0, 16);
			memset(msg2, 0, 16);
			app_cv1.get_app_msg(msg1, 16);
			app_cv2.get_app_msg(msg2, 16);

			snprintf(status_buf[3], Display_OLED::TMPLEN, "CV %d:%s %d:%s"
				, app_cv_c[0]->get_current_channel()+1
				, msg1
				, app_cv_c[1]->get_current_channel()+1
				, msg2
			);
		}
#endif // MEASUREMENT

		//serial_log("%d", analogRead(PIN_CV1));
		//show_cvconfig(cvc[0]);

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

	pinMode(pol_pins[0], OUTPUT);
	pinMode(pol_pins[1], OUTPUT);
	pinMode(pol_pins[2], OUTPUT);
	pinMode(pol_pins[3], OUTPUT);
	pinMode(pol_pins[4], OUTPUT);
	pinMode(pol_pins[5], OUTPUT);
	pinMode(pol_pins[6], OUTPUT);
	pinMode(pol_pins[7], OUTPUT);

	pinMode(PIN_ROTARY_SW1, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_ROTARY_SW1), onRotary, CHANGE);
	pinMode(PIN_ROTARY_SW2, INPUT);

	pinMode(PIN_CLOCK, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_CLOCK), onClock, CHANGE);

	pinMode(PIN_BUTTON, INPUT_PULLUP);
	attachInterrupt(digitalPinToInterrupt(PIN_BUTTON), onButton, CHANGE);

	pinMode(PIN_CV1, INPUT);
	pinMode(PIN_CV2, INPUT);

	menu_channel.add_sibling(&menu_free);
	menu_free.add_sibling(&menu_sync); // add_sibling should follow add_child.
	menu_sync.add_sibling(&menu_func);
	menu_func.add_sibling(&menu_pol);
	menu_pol.add_sibling(&menu_ptn);
	menu_ptn.add_sibling(&menu_cv1_base);
	menu_cv1_base.add_sibling(&menu_cv2_base);

	menu_free.add_child(&menu_freq);
	menu_freq.add_sibling(&menu_bpm);
	menu_bpm.add_sibling(&menu_free_back);

	menu_sync.add_child(&menu_src);
	menu_src.add_sibling(&menu_mult);
	menu_mult.add_sibling(&menu_phase);
	menu_phase.add_sibling(&menu_sync_back);

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

auto TEXT_HEIGHT = Display_OLED::TEXT_HEIGHT;

void loop() {
	//display.test();

	// graphics functions cannot be called in interruption callbacks.
	display.display(
		[&](){
			display.print_column(0, status_buf[0]);
			display.print_column(TEXT_HEIGHT, status_buf[1]);
			display.print_column(TEXT_HEIGHT*2, status_buf[2]);
			display.draw_hline(TEXT_HEIGHT*3+TEXT_HEIGHT/2);
			display.print_menu(TEXT_HEIGHT*4);
			display.print_app_msg(TEXT_HEIGHT*5);
			display.draw_hline(TEXT_HEIGHT*6+TEXT_HEIGHT/2);
			display.print_column(TEXT_HEIGHT*7, status_buf[3]);
		}
	);
}
