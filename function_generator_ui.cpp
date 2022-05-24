#include "function_generator_ui.h"
#include "Display_OLED.h"

static constexpr size_t N_CH = 4096;

extern Application *app;
extern MenuApp app_menu;
extern Display_OLED display;

extern FreqApp app_freq;
extern ChannelApp app_channel;
extern FuncApp app_func;
extern SrcApp app_src;
extern MultApp app_mult;
extern PhaseApp app_phase;

void FreqApp::set_sync_mode(size_t ch, SyncType type)
{
	auto &flag = data[ch].sync_flag;
	flag = type;
	register_update();
}

void FreqApp::set_free_mode(size_t ch)
{
	auto &flag = data[ch].sync_flag;
	flag = Free;
	register_update();
}

bool FreqApp::check_new_period(size_t ch, long t)
{
	bool ret = false;
	long cur_phase = 0;

	if (sync_mode(ch) != Free) {
		auto coeff = app_mult.get_coeff(ch);
		auto factor = app_phase.get_factor(ch);
		auto freq = get_frequency(ch);
		cur_phase = (t - (long)(1e6/freq/8.0*factor)) % (long)(1e6/freq/coeff);
	} else {
		cur_phase = t % (long)(1e6/get_frequency(ch));
	}

	if (cur_phase < data[ch].prev_phase) ret = true;
	data[ch].prev_phase = cur_phase;
	return ret;
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

void FreqApp::set_param(size_t ch, double f, long p)
{
		auto coeff = app_mult.get_coeff(ch);
		if (coeff >= 1) {
			auto &ext_freq = data[ch].ext_freq;
			auto &ext_phase = data[ch].ext_phase;
			ext_freq = f;
			ext_phase = p;
		} else {
			if (data[ch].phase_counter >= 1.0/coeff-1) {
				data[ch].phase_counter = 0;
				auto &ext_freq = data[ch].ext_freq;
				auto &ext_phase = data[ch].ext_phase;
				ext_freq = f;
				ext_phase = p;
			}
			data[ch].phase_counter += 1;
		}
}

void FuncApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

double func_sin(long t, double freq, long phase)
{
	return sin( 2*3.141592*freq/1e6*(t - phase) );
}

double func_saw(long t, double freq, long phase)
{
	auto lambda = (1e6/freq); // in us
	auto out = (N_CH-1)/lambda * (double)( (t-phase) % (long)lambda );
	return out;
}

double func_tri(long t, double freq, long phase)
{
	auto saw2 = func_saw(t, freq, phase)*2;
	if (saw2 > (N_CH-1)) return (N_CH-1)*2-saw2;
	else return saw2;
}

double func_sq(long t, double freq, long phase)
{
	auto saw = func_saw(t, freq, phase);
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

auto FuncApp::get_function(size_t ch) const -> std::function<double(long, double, long)>
{
	const auto &idx = data[ch].idx;

	if (idx == SIN) {
		return [=](long t, double f, long p) { return (func_sin(
			t, f, p)+1)/2*(N_CH-1); };
	} else if (idx == SAW_TOOTH) {
		return [=](long t, double f, long p) { return func_saw(
			t, f, p); };
	} else if (idx == TRIANGLE) {
		return [=](long t, double f, long p) { return func_tri(
			t, f, p); };
	} else if (idx == SQUARE) {
		return [=](long t, double f, long p) { return func_sq(
			t, f, p); };
	}

	return std::function<long(long, double, double)>();
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

void SrcApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void SrcApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	const size_t ch = app_channel.get_current_channel();
	int type = (int)app_freq.sync_mode(ch);

	if (dir == RotarySwitch::CW) {
		if (type < FreqApp::Sync_ExtClock) {
			type += 1;
		}

	} else {
		if (type > FreqApp::Sync_Channel1) {
			type -= 1;
		}
	}

	// check if the master channel is external or free or not the channel itself
	if (ch == type || app_freq.sync_mode(ch) != FreqApp::Free) {
		display.show_app_msg("   -");
	} else {
		app_freq.set_sync_mode(ch, (FreqApp::SyncType)type);
		display.show_app_msg("   %s", get_source_name((FreqApp::SyncType)type));
	}
	register_update();
}

const char *get_source_name(FreqApp::SyncType type)
{
	if (type == FreqApp::Sync_Channel1) return "ch1";
	else if (type == FreqApp::Sync_Channel2) return "ch2";
	else if (type == FreqApp::Sync_ExtClock) return "clk";
	else return "free";
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
		} else if (sign == Eq) {
			factor += 1;
			sign = Mult;
		} else {
			factor -= 1;
			if (factor == 1) {
				sign = Eq;
			}
		}

	} else {
		if (sign == Div) {
			factor += 1;
		} else if (sign == Eq) {
			factor += 1;
			sign = Div;
		} else {
			factor -= 1;
			if (factor == 1) {
				sign = Eq;
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
	if (sign == Mult || sign == Eq) return factor;
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
}

void Menu_Src::exec()
{
	const auto ch = app_channel.get_current_channel();
	const auto type = app_freq.sync_mode(ch);
	display.show_app_msg("   %s", get_source_name(type));
	app = &app_src;
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


