#include "function_generator_ui.h"
#include "Display_OLED.h"

extern Application *app;
extern MenuApp app_menu;
extern Display_OLED display;

extern FreqApp app_freq;
extern FuncApp app_func;
extern MultApp app_mult;
extern PhaseApp app_phase;

void FreqApp::set_sync_mode()
{
	sync_flag = true;
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
	auto out = 4095/lambda * (double)( t % (long)lambda );
	return out;
}

double func_tri(long t, double freq)
{
	auto saw2 = func_saw(t, freq)*2;
	if (saw2 > 4095) return 4095*2-saw2;
	else return saw2;
}

double func_sq(long t, double freq)
{
	auto saw = func_saw(t, freq);
	return saw < 2048 ? 4095 : 0;
}

void FuncApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (idx < FUNC_MAX-1) idx += 1;

	} else {
		if (idx > 0) idx -= 1;

	}

	display.show_app_msg("   %s", get_func_name());
	register_update();
}

auto FuncApp::get_function() -> std::function<long(long)>
{
	if (idx == SIN) {
		return [](long t) { return (func_sin(
			t-app_freq.get_phase() - 1e6/app_freq.get_frequency()/8.0*app_phase.get_factor()
			, app_freq.get_frequency())+1)/2*4095; };
	} else if (idx == SAW_TOOTH) {
		return [](long t) { return func_saw(
			t-app_freq.get_phase() - 1e6/app_freq.get_frequency()/8.0*app_phase.get_factor()
			, app_freq.get_frequency()); };
	} else if (idx == TRIANGLE) {
		return [](long t) { return func_tri(
			t-app_freq.get_phase() - 1e6/app_freq.get_frequency()/8.0*app_phase.get_factor()
			, app_freq.get_frequency()); };
	} else if (idx == SQUARE) {
		return [](long t) { return func_sq(
			t-app_freq.get_phase() - 1e6/app_freq.get_frequency()/8.0*app_phase.get_factor()
			, app_freq.get_frequency()); };
	}

	return std::function<long(long)>();
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

	display.show_app_msg("   %s%d", get_sign(), get_factor());
	register_update();
}

double MultApp::get_coeff()
{
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
	if (dir == RotarySwitch::CW) {
		if (factor < 8) factor += 1;

	} else {
		if (factor > 0) factor -= 1;

	}

	display.show_app_msg("   %d", get_factor());
	register_update();
}


//  -----------------------------------------------

void Menu_Freq::exec()
{
	display.show_app_msg("   %5.1f", app_freq.get_frequency());
	app = &app_freq;
}

void Menu_Func::exec()
{
	display.show_app_msg("   %s", app_func.get_func_name());
	app = &app_func;
}

void Menu_Free::exec()
{
	//serial_log("Menu_Free::exec");
	app_freq.set_free_mode();
}

void Menu_Sync::exec()
{
	//serial_log("Menu_Sync::exec");
	app_freq.set_sync_mode();
}

void Menu_Mult::exec()
{
	display.show_app_msg("   %s%d", app_mult.get_sign(), app_mult.get_factor());
	app = &app_mult;
}

void Menu_Phase::exec()
{
	display.show_app_msg("   %d", app_phase.get_factor());
	app = &app_phase;
}


