#ifndef FUNCTION_GENERATOR_UI__H
#define FUNCTION_GENERATOR_UI__H

#include <array>
#include <string>

#include "ui_common.h"
#include "ArxTypeTraits.h"

struct Menu_Sync : Menu
{
	Menu_Sync() : Menu("Synchonize>") {}
	void exec() override;
};

struct Menu_Src : Menu
{
	Menu_Src() : Menu("Source>") {}
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

// ---

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

struct Menu_BPM : Menu
{
	Menu_BPM() : Menu("BPM>") {}
	void exec() override;
};

// ---

struct Menu_Func: Menu
{
	Menu_Func() : Menu("Function>") {}
	void exec() override;
};

struct Menu_Func_sin: Menu
{
	Menu_Func_sin() : Menu("[sin]") {}
	void exec() override;
};

struct Menu_Func_saw: Menu
{
	Menu_Func_saw() : Menu("[saw]") {}
	void exec() override;
};

struct Menu_Func_tri: Menu
{
	Menu_Func_tri() : Menu("[tri]") {}
	void exec() override;
};

struct Menu_Func_sq: Menu
{
	Menu_Func_sq() : Menu("[sq]") {}
	void exec() override;
};

struct Menu_Func_ARE: Menu
{
	Menu_Func_ARE() : Menu("AR envelope>") {}
	void exec() override;
};

// -

struct Menu_Func_ARE_Attack: Menu
{
	Menu_Func_ARE_Attack() : Menu("Attack>") {}
	void exec() override;
};

struct Menu_Func_ARE_Release: Menu
{
	Menu_Func_ARE_Release() : Menu("Release>") {}
	void exec() override;
};


// ---

struct Menu_Channel: Menu
{
	Menu_Channel() : Menu("Channel>") {}
	void exec() override;
};

// ---

struct Menu_Polarity: Menu
{
	Menu_Polarity() : Menu("Polarity>") {}
	void exec() override;
};

// ---

struct Menu_Pattern: Menu
{
	Menu_Pattern() : Menu("Pattern>") {}
	void exec() override;
};

struct Menu_Pattern_Off: Menu
{
	Menu_Pattern_Off() : Menu("[Off]") {}
	void exec() override;
};

struct Menu_Pattern_Euclidean: Menu
{
	Menu_Pattern_Euclidean() : Menu("Euclidean>") {}
	void exec() override;
};

struct Menu_Pattern_Euclidean_Length: Menu
{
	Menu_Pattern_Euclidean_Length() : Menu("Length>") {}
	void exec() override;
};

struct Menu_Pattern_Euclidean_Number: Menu
{
	Menu_Pattern_Euclidean_Number() : Menu("Number>") {}
	void exec() override;
};

struct Menu_Pattern_Euclidean_Shift: Menu
{
	Menu_Pattern_Euclidean_Shift() : Menu("Shift>") {}
	void exec() override;
};

// ---

class ChannelApp;

struct Menu_CV_Channel: Menu
{
	Menu_CV_Channel(ChannelApp *app)
		: Menu("Channel>")
		, cv_app(app)
	{}
	void exec() override;

	ChannelApp *cv_app;
};

struct Menu_CV_Base: Menu
{
	Menu_CV_Base(const char *title)
	: Menu(title)
	{}
	void exec() override {};
};

struct Menu_CV: Menu
{
	Menu_CV(const char *title, Application *app)
	: Menu(title)
	, cv_app(app)
	{}
	void exec() override;

	Application *cv_app;
};

//  -----------------------------------------------

class ChannelApp : public Application
{
public:
	static constexpr const size_t ChannelMax = 8;

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
	enum SyncType {
		  Sync_Channel1 = 0
		, Sync_Channel2
		, Sync_Channel3
		, Sync_Channel4
		, Sync_Channel5
		, Sync_Channel6
		, Sync_Channel7
		, Sync_Channel8
		, Sync_ExtClock
		, Free
	};

	enum FreqMode {
		FREQ_MODE, BPM_MODE
	};

	FreqApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	double get_frequency(size_t ch) const {
		const auto &freq = data[ch].freq;
		const auto &ext_freq = data[ch].ext_freq;
		if (sync_mode(ch) != Free) return ext_freq;
		else return freq;
	}
	unsigned long get_phase(size_t ch) const {
		const auto &phase = data[ch].phase;
		const auto &ext_phase = data[ch].ext_phase;
		if (sync_mode(ch) != Free) return ext_phase;
		else return phase;
	}

	void set_param(size_t ch, double f, unsigned long p); 

	void set_free_mode(size_t ch); 
	void set_sync_mode(size_t ch, SyncType mode);

	SyncType sync_mode(size_t ch) const {
		const auto &flag = data[ch].sync_flag;
		return flag;
	}

	bool check_new_period(size_t ch, unsigned long t);

	void apply_cv(size_t ch, size_t cv);

	void set_mode(FreqMode mode) {
		freq_mode = mode;
	}
	size_t get_bpm(size_t ch) const {
		const auto &freq = data[ch].freq;
		const auto &ext_freq = data[ch].ext_freq;
		if (sync_mode(ch) != Free) return (size_t)(60.0*ext_freq);
		else return (size_t)(60.0*freq);
	}

private:
	struct FreqData {
		double freq = 1;
		unsigned long phase = 0;

		double ext_freq = 1;
		unsigned long ext_phase = 0;
		unsigned long phase_counter = 0;

		SyncType sync_flag = Free;

		unsigned long prev_phase = 0;
	};

/*
	static FreqData &&FreqData_Init(SyncType src) {
		return std::move(FreqData{ 1, 0, 1, 0, 0, src, 0 });
	}
*/

	std::array<FreqData, ChannelApp::ChannelMax> data = {
		FreqData{2.333334, 0, 1, 0, 0, Free, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},

		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0},
		FreqData{1, 0, 1, 0, 0, Sync_Channel1, 0}
	};
	FreqMode freq_mode;
};

const char *get_source_name(FreqApp::SyncType);

//  -----------------------------------------------
class SrcApp : public Application
{
public:
	SrcApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

private:
	// Only for user interface. Actual type is stored in FreqApp.
	std::array<FreqApp::SyncType, ChannelApp::ChannelMax> type_print;
};

//  -----------------------------------------------
class MultApp : public Application
{
public:
	enum Sign { Mult, Div, Eq };

	MultApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	const char *get_sign(size_t ch) const {
		const auto &sign = data[ch].sign;
		if (sign == Eq) return "=";
		else if (sign == Mult) return "*";
		else return "/";
	}
	int get_factor(size_t ch) const {
		const auto &factor = data[ch].factor;
		return factor;
	}

	double get_coeff(size_t ch) const;

	void apply_cv(size_t ch, size_t cv);

private:
	struct MultData {
		unsigned int factor = 1;
		Sign sign = Eq;
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

	void apply_cv(size_t ch, size_t cv);

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
	AR_ENVELOPE, 
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
			, {"ARE"}
		}
	{}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	auto get_function(size_t ch) const -> std::function<double(unsigned long, double, unsigned long)>;

	const char *get_func_name(size_t ch) const {
		const auto &idx = data[ch].idx;
		return funcs[idx].name;
	}

	void set_function(size_t ch, FuncType type) {
		data[ch].idx = (size_t)type;
	}

	struct FuncElement {
		const char *name;
	};

	void apply_cv(size_t ch, size_t cv);

private:
	struct FuncData {
		size_t idx = SQUARE;
	};
	std::array<FuncData, ChannelApp::ChannelMax> data;

	FuncElement funcs[FUNC_MAX];
};

//  -----------------------------------------------

class ARE_Attack_App : public Application
{
public:
	ARE_Attack_App() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	size_t get_value(size_t ch) const {
		return data[ch].value;
	}

	void apply_cv(size_t ch, size_t cv);

private:
	struct AttackParam {
		size_t value = 50;
	};

	std::array<AttackParam, ChannelApp::ChannelMax> data;
};

class ARE_Release_App : public Application
{
public:
	ARE_Release_App() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	size_t get_value(size_t ch) const {
		return data[ch].value;
	}

	void apply_cv(size_t ch, size_t cv);

private:
	struct ReleaseParam {
		size_t value = 50;
	};

	std::array<ReleaseParam, ChannelApp::ChannelMax> data;
};


//  -----------------------------------------------

class PolarityApp : public Application
{
public:
	enum PolarityType {
		Unipolar, Bipolar
	};

	PolarityApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	PolarityType get_mode(size_t ch) const {
		return data[ch].mode;
	}

	const char *get_mode_msg(size_t ch) const {
		return get_mode(ch) == Unipolar ? "unipolar" : "bipolar";
	}

private:
	struct PolarityData {
		PolarityType mode;
	};

	std::array<PolarityData, ChannelApp::ChannelMax> data;
};


//  -----------------------------------------------

class Euclid_Len_App : public Application
{
public:
	static const constexpr size_t MAX_LEN = 64;

	Euclid_Len_App() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	size_t get_value(size_t ch) const {
		return data[ch].value;
	}

	void apply_cv(size_t ch, size_t cv);

private:
	struct EuclidLen {
		size_t value = 16;
	};

	std::array<EuclidLen, ChannelApp::ChannelMax> data;
};

class Euclid_Num_App : public Application
{
public:
	Euclid_Num_App() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	size_t get_value(size_t ch) const {
		return data[ch].value;
	}
	void set_value(size_t ch, size_t value) {
		data[ch].value = value;
	}

	void apply_cv(size_t ch, size_t cv);

private:
	struct EuclidNum {
		size_t value = 8;
	};

	std::array<EuclidNum, ChannelApp::ChannelMax> data;
};

class Euclid_Sft_App : public Application
{
public:
	Euclid_Sft_App() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	size_t get_value(size_t ch) const {
		return data[ch].value;
	}
	void set_value(size_t ch, size_t value) {
		data[ch].value = value;
	}

	void apply_cv(size_t ch, size_t cv);

private:
	struct EuclidSft {
		size_t value = 0;
	};

	std::array<EuclidSft, ChannelApp::ChannelMax> data;
};

class PatternController
{
public:
	enum PatternType {
		Off
		, Euclidean
	};

	void notify(size_t ch);
	bool enabled(size_t ch) const;

	void set_type(size_t ch, PatternType type) {
		data[ch].type = type;
	}

	void get_msg(size_t ch, char *p, size_t len);

private:
	struct PatternData {
		PatternType type = Off;
		bool enabled = true;
		size_t euc_cnt = 0;
		int euc_pattern[Euclid_Len_App::MAX_LEN];
	};

	std::array<PatternData, ChannelApp::ChannelMax> data;
};


struct CVConfig
{
	using type = uint16_t;
	type flags;
/*
	bool freq;
	bool mult;
	bool phase;
	bool func;
	bool are_attack;
	bool are_release;
	bool euc_len;
	bool euc_num;
	bool euc_sft;
*/
};

enum CVItem
{
	Freq = 0
	, Mult
	, Phase
	, Func
	, Attack
	, Release
	, Euc_Len
	, Euc_Num
	, Euc_Sft
};

template <int N>
class CVApp : public Application
{
public:
	using TitlesType = std::array<std::string, N>;
	using CBsType = std::array<std::function<void()>, N>;

	CVApp(TitlesType titles, CBsType callbacks) : titles(titles), callbacks(callbacks) {}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;

	void get_app_msg(char *, size_t) override;

private:
	size_t idx = 0;
	TitlesType titles;
	CBsType callbacks;
};


#endif // FUNCTION_GENERATOR_UI__H
