#ifndef FUNCTION_GENERATOR_UI__H
#define FUNCTION_GENERATOR_UI__H

#include <array>

#include "ui_common.h"
#include "ArxTypeTraits.h"

struct Menu_Sync : Menu
{
	Menu_Sync() : Menu("Synchonize>") {}
	void exec() override;
};

struct Menu_Mult : Menu
{
	Menu_Mult() : Menu("Multiply>") {}
	void exec() override;
};

struct Menu_Phase : Menu
{
	Menu_Phase() : Menu("Phase>") {}
	void exec() override;
};

struct Menu_Free : Menu
{
	Menu_Free() : Menu("Free>") {}
	void exec() override;
};

struct Menu_Freq : Menu
{
	Menu_Freq() : Menu("Frequency>") {}
	void exec() override;
};

struct Menu_Func: Menu
{
	Menu_Func() : Menu("Function>") {}
	void exec() override;
};

struct Menu_Channel: Menu
{
	Menu_Channel() : Menu("Channel>") {}
	void exec() override;
};

//  -----------------------------------------------

class ChannelApp : public Application
{
public:
	static constexpr const size_t ChannelMax = 2;

	ChannelApp()
		: ch(0)
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	size_t get_current_channel() const {
		return ch;
	}

private:
	size_t ch;
};

//  -----------------------------------------------

class FreqApp : public Application
{
public:
	FreqApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	double get_frequency(size_t ch) const {
		const auto &freq = data[ch].freq;
		const auto &ext_freq = data[ch].ext_freq;
		if (sync_mode(ch)) return ext_freq;
		else return freq;
	}
	double get_phase(size_t ch) const {
		const auto &phase = data[ch].phase;
		const auto &ext_phase = data[ch].ext_phase;
		if (sync_mode(ch)) return ext_phase;
		else return phase;
	}

	void set_frequency(size_t ch, double f) {
		auto &ext_freq = data[ch].ext_freq;
		ext_freq = f;
	}
	void set_phase(size_t ch, long p) {
		auto &ext_phase = data[ch].ext_phase;
		ext_phase = p;
	}

	void set_free_mode(size_t ch) {
		auto &flag = data[ch].sync_flag;
		flag = false;
	}
	void set_sync_mode(size_t ch);
	bool sync_mode(size_t ch) const {
		const auto &flag = data[ch].sync_flag;
		return flag;
	}

private:
	struct FreqData {
		double freq = 10;
		long phase = 0;

		double ext_freq = 10;
		long ext_phase = 0;

		bool sync_flag = false;
	};

	std::array<FreqData, ChannelApp::ChannelMax> data;
};

//  -----------------------------------------------

class MultApp : public Application
{
public:
	enum Sign { Mult, Div };

	MultApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	const char *get_sign(size_t ch) const {
		const auto &sign = data[ch].sign;
		return sign == Mult ? "*" : "/";
	}
	int get_factor(size_t ch) const {
		const auto &factor = data[ch].factor;
		return factor;
	}

	double get_coeff(size_t ch) const;

private:
	struct MultData {
		unsigned int factor = 1;
		Sign sign = Mult;
	};

	std::array<MultData, ChannelApp::ChannelMax> data;
};

//  -----------------------------------------------

class PhaseApp : public Application
{
public:
	PhaseApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	int get_factor(size_t ch) const {
		const auto &factor = data[ch].factor;
		return factor;
	}

private:
	struct PhaseData {
		unsigned int factor = 0;
	};

	std::array<PhaseData, ChannelApp::ChannelMax> data;
};

//  -----------------------------------------------

enum FuncType {
	SIN = 0,
	SAW_TOOTH,
	TRIANGLE, 
	SQUARE, 
	FUNC_MAX,
};

class FuncApp : public Application
{
public:
	FuncApp()
		:
		funcs {
			{"sin"}	
			, {"saw"}
			, {"tri"}
			, {"squ"}
		}
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	auto get_function(size_t ch) const -> std::function<long(long)>;

	const char *get_func_name(size_t ch) const {
		const auto &idx = data[ch].idx;
		return funcs[idx].name;
	}

	struct FuncElement {
		const char *name;
	};

private:
	struct FuncData {
		size_t idx = SIN;
	};
	std::array<FuncData, ChannelApp::ChannelMax> data;

	FuncElement funcs[FUNC_MAX];
};

//  -----------------------------------------------

#endif // FUNCTION_GENERATOR_UI__H
