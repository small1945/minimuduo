#ifndef CTIMER_H_
#define CTIMER_H_
#include <functional>
#include "CTime.h"
class Timer
{
public:
	using Callback = std::function<void()>;
	Timer(int seq) : m_func(NULL), m_repeat(false), m_seq(seq)
	{
		auto begtime = CTime::Now();
		m_begSecond = begtime.getSecond();
	}
	Timer(const Callback &func, int seq) : m_func(func), m_repeat(false), m_seq(seq)
	{
		auto begtime = CTime::Now();
		m_begSecond = begtime.getSecond();
	}
	void setRepeat() { m_repeat = true; }
	void callbackFunc() { m_func(); }
	void setCallback(const Callback &func) {m_func=func;}
	bool IsReapt() const { return m_repeat; }
	int getSeq() const { return m_seq; }
	bool judgeExpire();
	int getBegSecond() const { return m_begSecond; }
	void addBegSecond() { m_begSecond += m_seq; }
	void delayExpireTime(int sec) { m_begSecond += sec; }
	void resetInterval(int sec) { m_seq = sec; }

private:
	Callback m_func;
	bool m_repeat;
	int m_seq;
	int m_begSecond;
};

#endif
