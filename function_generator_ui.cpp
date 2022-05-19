#include "function_generator_ui.h"
#include "Display_OLED.h"

static constexpr size_t N_CH = 4096;

extern Application *app;
extern MenuApp app_menu;
extern Display_OLED display;

extern FreqApp app_freq;
extern ChannelApp app_channel;
extern FuncApp app_func;
extern MultApp app_mult;
extern PhaseApp app_phase;

void FreqApp::set_sync_mode(size_t ch)
{
	auto &flag = data[ch].sync_flag;
	flag = true;
	register_update();
}

void FreqApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void FreqApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	const auto ch = app_channel.get_current_channel();
	auto &freq = data[ch].freq;
	if (dir == RotarySwitch::CW) {
		if (freq < 1) {
			freq *= 1.2;
		} else {
			freq += 1;
		}

	} else {
		if (freq <= 1) {
			freq /= 1.2;
		} else {
			freq -= 1;
		}

	}

	display.show_app_msg("   %5.1f", freq);
	register_update();
}

void FuncApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

double func_sin(long t, double freq)
{
	return sin( 2*3.141592*freq*t/1e6 );
}

double func_saw(long t, double freq)
{
	auto lambda = (1e6/freq); // in us
	auto out = (N_CH-1)/lambda * (double)( t % (long)lambda );
	return out;
}

double func_tri(long t, double freq)
{
	auto saw2 = func_saw(t, freq)*2;
	if (saw2 > (N_CH-1)) return (N_CH-1)*2-saw2;
	else return saw2;
}

double func_sq(long t, double freq)
{
	auto saw = func_saw(t, freq);
	return (saw < N_CH/2) ? (N_CH-1) : 0;
}

void FuncApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	const auto ch = app_channel.get_current_channel();
	auto &idx = data[ch].idx;
	if (dir == RotarySwitch::CW) {
		if (idx < FUNC_MAX-1) idx += 1;

	} else {
		if (idx > 0) idx -= 1;

	}

	display.show_app_msg("   %s", get_func_name(ch));
	register_update();
}

auto FuncApp::get_function(size_t ch) const -> std::function<long(long)>
{
	const auto &idx = data[ch].idx;

	const auto phase = app_freq.get_phase(ch);
	const auto freq = app_freq.get_frequency(ch);
	const auto factor = app_phase.get_factor(ch);

	if (idx == SIN) {
		return [=](long t) { return (func_sin(
			t-phase - 1e6/freq/8.0*factor
			, freq)+1)/2*(N_CH-1); };
	} else if (idx == SAW_TOOTH) {
		return [=](long t) { return func_saw(
			t-phase - 1e6/freq/8.0*factor
			, freq); };
	} else if (idx == TRIANGLE) {
		return [=](long t) { return func_tri(
			t-phase - 1e6/freq/8.0*factor
			, freq); };
	} else if (idx == SQUARE) {
		return [=](long t) { return func_sq(
			t-phase - 1e6/freq/8.0*factor
			, freq); };
	}

	return std::function<long(long)>();
}

//  -----------------------------------------------

void ChannelApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void ChannelApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (ch < ChannelMax-1) ch += 1;

	} else {
		if (ch > 0) ch -= 1;

	}

	display.show_app_msg("   %u", get_current_channel()+1);
	register_update();
}

//  -----------------------------------------------

void MultApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void MultApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	const size_t ch = app_channel.get_current_channel();
	auto &sign = data[ch].sign;
	auto &factor = data[ch].factor;

	if (dir == RotarySwitch::CW) {
		if (sign == Mult) {
			factor += 1;
		} else {
			if (factor <= 1) {
				sign = Mult;
			} else {
				factor -= 1;
			}
		}

	} else {
		if (sign == Div) {
			factor += 1;
		} else {
			if (factor <= 1) {
				sign = Div;
			} else {
				factor -= 1;
			}
		}

	}

	display.show_app_msg("   %s%d", get_sign(ch), get_factor(ch));
	register_update();
}

double MultApp::get_coeff(size_t ch) const
{
	const auto &sign = data[ch].sign;
	const auto &factor = data[ch].factor;
	if (sign == Mult) return factor;
	else return 1.0/factor;
}

//  -----------------------------------------------

void PhaseApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void PhaseApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	const size_t ch = app_channel.get_current_channel();
	auto &factor = data[ch].factor;

	if (dir == RotarySwitch::CW) {
		if (factor < 8) factor += 1;

	} else {
		if (factor > 0) factor -= 1;

	}

	display.show_app_msg("   %d", get_factor(ch));
	register_update();
}


//  -----------------------------------------------

void Menu_Freq::exec()
{
	const size_t ch = app_channel.get_current_channel();
	display.show_app_msg("   %5.1f", app_freq.get_frequency(ch));
	app = &app_freq;
}

void Menu_Func::exec()
{
	const size_t ch = app_channel.get_current_channel();
	display.show_app_msg("   %s", app_func.get_func_name(ch));
	app = &app_func;
}

void Menu_Channel::exec()
{
	display.show_app_msg("   %u", app_channel.get_current_channel()+1);
	app = &app_channel;
}

void Menu_Free::exec()
{
	//serial_log("Menu_Free::exec");
	const size_t ch = app_channel.get_current_channel();
	app_freq.set_free_mode(ch);
}

void Menu_Sync::exec()
{
	//serial_log("Menu_Sync::exec");
	const size_t ch = app_channel.get_current_channel();
	app_freq.set_sync_mode(ch);
}

void Menu_Mult::exec()
{
	const size_t ch = app_channel.get_current_channel();
	display.show_app_msg("   %s%d", app_mult.get_sign(ch), app_mult.get_factor(ch));
	app = &app_mult;
}

void Menu_Phase::exec()
{
	const size_t ch = app_channel.get_current_channel();
	display.show_app_msg("   %d", app_phase.get_factor(ch));
	app = &app_phase;
}


