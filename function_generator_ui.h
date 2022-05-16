#ifndef FUNCTION_GENERATOR_UI__H
#define FUNCTION_GENERATOR_UI__H

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

//  -----------------------------------------------

class FreqApp : public Application
{
public:
	FreqApp()
		: freq(10.0), phase(0)
		, ext_freq(10.0), ext_phase(0)
		, sync_flag(false)
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	double get_frequency() const {
		if (sync_mode()) return ext_freq;
		else return freq;
	}
	double get_phase() const {
		if (sync_mode()) return ext_phase;
		else return phase;
	}

	void set_frequency(double f) { ext_freq = f; }
	void set_phase(long p) { ext_phase = p; }

	void set_free_mode() { sync_flag = false; }
	void set_sync_mode();
	bool sync_mode() const { return sync_flag; }

private:
	double freq;
	long phase;

	double ext_freq;
	long ext_phase;

	bool sync_flag;
};

//  -----------------------------------------------

class MultApp : public Application
{
public:
	enum Sign { Mult, Div };

	MultApp()
		: factor(1), sign(Mult)
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	const char *get_sign() const { return sign == Mult ? "*" : "/"; }
	int get_factor() const { return factor; }

	double get_coeff();

private:
	unsigned int factor;
	Sign sign;
};

//  -----------------------------------------------

class PhaseApp : public Application
{
public:
	PhaseApp()
		: factor(0)
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	int get_factor() const { return factor; }

private:
	unsigned int factor;
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
		: idx(SIN)
		, funcs {
			{"sin"}	
			, {"sawtooth"}
			, {"triangle"}
			, {"square"}
		}
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	auto get_function() -> std::function<long(long)>;

	const char *get_func_name() const {
		return funcs[idx].name;
	}

	struct FuncElement {
		const char *name;
	};

private:
	size_t idx;
	FuncElement funcs[FUNC_MAX];
};

//  -----------------------------------------------

#endif // FUNCTION_GENERATOR_UI__H
