---
title: "Michael Kearns: Algorithmic Trading and the Role of AI in Investment at Different Time Scales"
channel: lexfridman
url: "https://www.youtube.com/watch?v=KWD6j5B_Lio"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Michael Kearns: Algorithmic Trading and the Role of AI in Investment at Different Time Scales

You've worn many hats, one of which, the one that first caused me to become a big fan ofyour work many years ago is algorithmic trading.So I have to just ask a question about this because you have so much fascinating workthere.In the 21st century, what role do you think algorithms have in the space of trading, investment,

in the financial sector?Yeah, it's a good question.I mean, in the time I've spent on Wall Street and in finance, I've seen a clear progression.And I think it's a progression that kind of models the use of algorithms and automationmore generally in society, which is the things that kind of get taken over by the algos first

are sort of the things that computers are obviously better at than people, right?And so, you know, so first of all, there needed to be this era of automation, right, where just, you know, financial exchanges became largely electronic, which then enabled the possibility of, you know, trading becoming more algorithmic.Because once, you know, the exchanges are electronic, an algorithm can submit an order through an API just as well as a human can do at a monitor.It can do it really quickly.It can read all the data.

Yeah.Yeah. And so, you know, I think the places where algorithmic trading have had the greatest inroadsand had the first inroads were in kind of execution problems, kind of optimized executionproblems. So what I mean by that is at a large brokerage firm, for example, one of the linesof business might be on behalf of large institutional clients taking, you know,

what we might consider difficult trades. So it's not like a mom and pop investor saying,I want to buy 100 shares of Microsoft. It's a large hedge fund saying, I want to buy a very,very large stake in Apple, and I want to do it over the span of a day. And it's such a largevolume that if you're not clever about how you break that trade up, not just over time, but overperhaps multiple different electronic exchanges that all let you trade Apple on their platform,

you will move, you'll push prices around in a way that hurts your execution.execution. This is an optimization problem. This is a control problem. Machines are better.We know how to design algorithms that are better at that kind of thing than a personis going to be able to do because we can take volumes of historical and real-time data tooptimize the schedule with which we trade. Similarly, high-frequency trading, which is

closely related but not the same as optimized execution where you're just trying to spot very,very temporary mispricings between exchanges or within an asset itself or just predict directionalmovement of a stock because of the kind of very, very low level granular buying and selling datain the exchange. Machines are good at this kind of stuff.It's kind of like the mechanics of trading. What about the, can machines do long terms

of prediction?Yeah. So I think we are in an era where clearly there have been some very successful quanthedge funds that are in what we would traditionally call still in the stat arb regime. So-What's that?Stat arb referring to statistical arbitrage. But for the purposes of this conversation,

it really means is making directional predictions in asset price movement or returns. Your predictionabout that directional movement is good for, you know, you have a view that it's valid forsome period of time between a few seconds and a few days. And that's the amount of time thatyou're going to kind of get into the position, hold it, and then hopefully be right about thedirectional movement and buy low and sell high as the cliche goes. So that is kind of a sweet spot,

I think, for quant trading and investing right now and has been for some time.When you really get to kind of more Warren Buffett style timescales, right? Like my cartoon of WarrenBuffett is that Warren Buffett sits and thinks what the long-term value of Apple really shouldbe. And he doesn't even look at what Apple's doing today. He just decides, I think that thisis what its long-term value is, and it's far from that right now. And so I'm going to buy some Apple

or short some Apple, and I'm going to sit on that for 10 or 20 years. Okay. So when you're at thatkind of timescale, or even more than just a few days, all kinds of other sources of risk andinformation. So now you're talking about holding things through recessions and economic cycles.Wars can break out. So there you have to understand human nature at a level that-Politics. Yeah. And you need to just be able to ingest many, many more sources of data that are

on wildly different time scales. So if I'm an HFT, I'm a high frequency trader, I really, my mainsource of data is just the data from the exchanges themselves about the activity in the exchanges,right? And maybe I need to pay, you know, I need to keep an eye on the news, right? Because,you know, that can cause sudden, you know, the CEO gets caught in a scandal or, you know,gets run over by a bus or something that can cause very sudden changes. But, you know, I don't need

to understand economic cycles. I don't need to understand recessions. I don't need to worry aboutthe political situation or war breaking out in this part of the world because all I need to knowis as long as that's not going to happen in the next 500 milliseconds, then my model is good.When you get to these longer timescales, you really have to worry about that kind of stuff.And people in the machine learning community are starting to think about this. We jointly

sponsored a workshop at Penn with the Federal Reserve Bank of Philadelphia a little more thana year ago on, I think the title was something like machine learning for macroeconomic prediction,macroeconomic referring specifically to these longer timescales. And it was an interestingconference, but it left me with greater confidence that we have a long way to go.And so I think that people that, in the grand scheme of things, if somebody asked me like,

well, whose job on Wall Street is safe from the bots? I think people that are at that longertime scale and have that appetite for all the risks involved in long-term investingand that really need kind of not just algorithms that can optimize from data,but they need views on stuff. They need views on the political landscape, economic cycles,and the like. And I think they're pretty safe for a while, as far as I can tell.

So Warren Buffett's job is safe for a little while.I'm not seeing a robo Warren Buffett anytime soon.It should give him comfort.
