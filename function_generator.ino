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
const int PIN_DA_LATCH = 11;

static const int PIN_ROTARY_SW1 = 7;
static const int PIN_ROTARY_SW2 = 6;
static const int PIN_BUTTON = 8;
static const int PIN_CLOCK = 9;


//  -----------------------------------------------

Display_OLED display;

//  -----------------------------------------------

MCP4922 da_converter(settings, PIN_DA_CS, PIN_DA_LATCH);

//  -----------------------------------------------

/*
Channel> app_channel
Free>
  Frequency> app_freq
	<Back
Synchronize>
  Multiply> app_mult
  Phase> app_phase
	<Back
Function> app_func
*/

Menu_Channel menu_channel;

Menu_Free menu_free;
Menu_Freq menu_freq;

Menu_Sync menu_sync;
Menu_Mult menu_mult;
Menu_Phase menu_phase;

MenuApp app_menu(&menu_channel, &display);

Menu_Back menu_free_back("<Back", &app_menu);
Menu_Back menu_sync_back("<Back", &app_menu);

Menu_Func menu_func;

ChannelApp app_channel;
FreqApp app_freq;
FuncApp app_func;
MultApp app_mult;
PhaseApp app_phase;

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

volatile long prev_clock = 0;

void onClock()
{
	if (digitalRead(PIN_CLOCK) == HIGH) {
		long cur = micros();
		auto period = cur - prev_clock;
		//display.show_app_msg("clock %5.1f Hz, %5.1f bpm", 1e6/(double)period, 60e6/(double)period);

		// synchronize frequency and phase with external clock
		for (size_t ch = 0; ch < ChannelApp::ChannelMax; ++ch) {
			if (app_freq.sync_mode(ch)) {
				auto coeff = app_mult.get_coeff(ch);
				app_freq.set_frequency(ch, coeff*1e6/(double)period);

				if (app->should_update()) app_freq.set_phase(ch, cur);
			}
		}

		prev_clock = cur;
	}
}

//  -----------------------------------------------

volatile long prev = 0;
volatile unsigned int cnt = 0;
constexpr const size_t MEAN_WIDTH = 40;

#undef MEASUREMENT
#ifdef MEASUREMENT
volatile long buf[MEAN_WIDTH];
#endif // MEASUREMENT

bool onTimer(repeating_timer_t *	)
{
	long cur = micros();

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
		const auto freq = app_freq.get_frequency(ch);
		display.show_status(
			"%u:%s %4.1fHz %3.0fbpm", ch+1, app_func.get_func_name(ch), freq, freq*60
		);
#endif // MEASUREMENT

		cnt = 0;
	}

	{
		auto func = app_func.get_function(0);
		auto out = func(cur);
		da_converter.emit(out, Channel_A);
	}

	{
		auto func = app_func.get_function(1);
		auto out = func(cur);
		da_converter.emit(out, Channel_B);
	}

	prev = cur;

	return true;
}

repeating_timer_t timer_data;

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

	randomSeed(analogRead(PIN_RANDOM_SEED));

	pinMode(PIN_DA_CS, OUTPUT);
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

	menu_free.add_child(&menu_freq);
	menu_freq.add_sibling(&menu_free_back); // add_sibling should follow add_child.

	menu_sync.add_child(&menu_mult);
	menu_mult.add_sibling(&menu_phase); // add_sibling should follow add_child.
	menu_phase.add_sibling(&menu_sync_back); // add_sibling should follow add_child.

	menu_sync.add_child(&menu_sync_back);

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
