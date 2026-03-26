---
title: "Gary Marcus: Limits of Deep Learning | AI Podcast Clips"
channel: lexfridman
url: "https://www.youtube.com/watch?v=wh_IZNHH2S0"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Gary Marcus: Limits of Deep Learning | AI Podcast Clips

You've highlighted in your new book as well, but a couple years ago wrote a paper titledDeep Learning, A Critical Appraisal, that lists 10 challenges faced by current deeplearning systems.So let me summarize them as data efficiency, transfer learning, hierarchical knowledge,open-ended inference, explainability, integrating prior knowledge, causal reasoning, modeling

an unstable world, robustness, adversarial examples, and so on.And then my favorite probably is reliability and engineering of real world systems.So whatever people can read the paper, they should definitely read the paper, should definitelyread your book.But which of these challenges, if solved, in your view, has the biggest impact on the

AI community?It's a very good question.And I'm going to be evasive because I think that they go together a lot.So some of them might be solved independently of others.but I think a good solution to AI starts by having real,

what I would call cognitive models of what's going on.So right now we have a approach that's dominant where you take statisticalapproximations of things, but you don't really understand them.So you know that, you know,bottles are correlated in your data with bottle caps,

but you don't understand that there's a thread on the bottle cap that,that fits with the thread on the bottle.And then that's what tightens.And if I tighten enough that there's a seal in the water and come out,Like there's no machine that understands that.

And having a good cognitive model of that kind of everyday phenomena is what we callcommon sense.And if you had that, then a lot of these other things start to fall into at least a littlebit better place.Right now, you're like learning correlations between pixels when you play a video game

or something like that.And it doesn't work very well.It works when the video game is just the way that you studied it.And then you alter the video game in small ways, like you move the paddle and break outa few pixels and the system falls apart because it doesn't understand.

it doesn't have a representation of a paddle, a ball, a wall, a set of bricks, and so forth.And so it's reasoning at the wrong level.So the idea of common sense, it's full of mystery.You've worked on it, but it's nevertheless full of mystery, full of promise.What does common sense mean?

What does knowledge mean?So the way you've been discussing it now is very intuitive.It makes a lot of sense that that is something we should have,and that's something deep learning systems don't have.but the argument could be that we're oversimplifying it because we're oversimplifying

the notion of common sense because that's how we we it feels like we as humans at the cognitivelevel approach problems so a lot of people aren't actually going to read my book but if they didread the book one of the things that might come as a surprise to them is that we actually saycommon sense is really hard and really complicated so they would probably you know my critics knowthat I like common sense. But that chapter actually starts by us beating up not on deep learning,

but kind of on our own home team, as it will. So Ernie and I are first and foremost,people that believe in at least some of what good old fashioned AI try to do. So we believe insymbols and logic and programming. Things like that are important. And we go through why eventhose tools that we hold fairly dear aren't really enough. So we talk about why common sense isactually many things. And some of them fit really well with those classical sets of tools. So

things like taxonomy. So I know that a bottle is an object or it's a vessel, let's say, and I knowa vessel is an object and objects are material things in the physical world. So I can make someinferences. If I know that vessels need to not have holes in them, then I can infer that in orderyou know, to carry their contents, then I can infer that a bottle shouldn't have a hole inorder to carry its content. So you can do hierarchical inference and so forth. And we

say that's great, but it's only a tiny piece of what you need for common sense. We give lots ofexamples that don't fit into that. So another one that we talk about is a cheese grater. You've gotholes in a cheese grater. You've got a handle on top. You can build a model in the game enginesense of a model so that you could have a little cartoon character flying around through the holesof the grader, but we don't have a system yet, taxonomy doesn't help us that much,

that really understands why the handle is on top and what you do with the handle,or why all of those circles are sharp, or how you'd hold the cheese with respect to the graderin order to make it actually work. Do you think these ideas are just abstractions that couldemerge on a system like a very large deep neural network? I'm a skeptic that that kind of emergenceper se can work. So I think that deep learning might play a role in the systems that do what I

want systems to do, but it won't do it by itself. I've never seen a deep learning system reallyextract an abstract concept. What they do, principled reasons for that stemming fromhow backpropagation works, how the architectures are set up. One example is deep learning peopleactually all build in something called convolution, which Jan McCune is famous for,which is an abstraction.

They don't have their systems learn this.So the abstraction is an objectthat looks the same if it appears in different places.And what Lacoon figured outand essentially why he was a co-winner of the Turing Award

was that if you program this in innately,then your system would be a whole lot more efficient.In principle, this should be learnable,but people don't have systems that kind of reify thingsand make them more abstract.

And so what you'd really wind up withIf you don't program that in advance as a system,it kind of realizes that this is the same thing as this,but then I take your little clock there and I move it overand it doesn't realize that the same thing applies to the clock.

So the really nice thing, you're right,that convolution is just one of the things that's like,it's an innate feature that's programmed by the human expert.We need more of those, not less.Yes.

But the nice feature is it feels like that requirescoming up with that brilliant idea,can get you a Turing Award,but it requires less effort than encoding,and something we'll talk about, the expert system.

So encoding a lot of knowledge by hand.So it feels like one, there's a huge amount of limitationswhich you clearly outline with deep learning,but the nice feature of deep learning,whatever it is able to accomplish,

it does it, it does a lot of stuff automaticallywithout human intervention.Well, and that's part of why people love it, right?But I always think of this quote from Bertrand Russell, which is, it has all the advantagesof theft over honest toil.

It's really hard to program into a machine a notion of causality or even how a bottleworks or what containers are.Ernie Davis and I wrote a, I don't know, 45-page academic paper trying just to understand whata container is, which I don't think anybody ever read the paper.But it's a very detailed analysis of all the things, well, not even all, some of the things

you need to do in order to understand a container.It would be a whole lot nice.And I'm a co-author on the paper.I made it a little bit better.But Ernie did the hard work for that particular paper.

And it took him like three months to get the logical statements correct.And maybe that's not the right way to do it.It's a way to do it.But on that way of doing it, it's really hard work to do something as simple as understandingcontainers.

And nobody wants to do that hard work.Even Ernie didn't want to do that hard work.everybody would rather just like feed their system in with a bunch of videos with a bunch ofcontainers and have the systems infer how containers work. It would be like so much lesseffort. Let the machine do the work. And so I understand the impulse. I understand why people

want to do that. I just don't think that it works. I've never seen anybody build a system that in arobust way can actually watch videos and predict exactly, you know, which containers would leakand which ones wouldn't or something like,and I know someone's going to go out and do that since I said it,and I look forward to seeing it.

But getting these things to work robustly is really, really hard.So Jan LeCun, who was my colleague at NYU for many years,thinks that the hard work should go into definingan unsupervised learning algorithm that will watch videos,use the next frame basically in order to tell it what's going on.

And he thinks that's the royal road,he's willing to put in the work in devising that algorithm. Then he wants the machine to do therest. And again, I understand the impulse. My intuition, based on years of watching this stuffand making predictions 20 years ago that still hold even though there's a lot more computationand so forth, is that we actually have to do a different kind of hard work, which is more like

building a design specification for what we want the system to do, doing hard engineering work tofigure out how we do things like what Jan did for convolution in order to figure out how toencode complex knowledge into the systems. The current systems don't have that much knowledgeother than convolution, which is, again, this, you know, objects being in different placesand having the same perception, I guess I'll say, same appearance.

People don't want to do that work. They don't see how to naturally fit one with the other.I think that's, yes, absolutely. But also on the expert system side, there's a temptation to gotoo far the other way. So it was just having an expert sort of sit down and encode the description,the framework for what a container is, and then having the system reason the rest.From my view, like one really exciting possibility is of active learning where it's

continuous interaction between a human and machine. As the machine, there's kind of deeplearning type extraction of information from data patterns and so on, but humans also guidingthe learning procedures, guiding both the process and the framework of how the machine learns,whatever the task is. I was with you with almost everything you said except the phrase deeplearning. What I think you really want there is a new form of machine learning. So let's remember,

deep learning is a particular way of doing machine learning. Most often it's done withsupervised data for perceptual categories. There are other things you can do with deep learning,some of them quite technical, but the standard use of deep learning is I have a lot of examplesand I have labels for them. So here are pictures. This one's the Eiffel Tower. This one's the SearsTower. This one's the Empire State Building. This one's a cat. This one's a pig and so forth.

You just get millions of examples, millions of labels. And deep learning is extremely good atthat. It's better than any other solution that anybody has devised, but it is not good atrepresenting abstract knowledge. It's not good at representing things like bottles contain liquidand have tops to them and so forth. It's not very good at learning or representing that kind ofknowledge. It is an example of having a machine learn something, but it's a machine that learns

a particular kind of thing, which is object classification. It's not a particularly goodalgorithm for learning about the abstractions that govern our world. There may be such a thing.And part of what we counsel in the book is maybe people should be working on devising such things.So one possibility, just I wonder what you think about it, is that deep neural networks do form abstractions, but they're not accessible to us humans in terms of we can't...There's some truth in that.

So is it possible that either current or future neural networks form very high-level abstractions, which are as powerful as our human abstractions of common sense?We just can't get a hold of them.And so the problem is essentially we need to make them explainable.This is an astute question, but I think the answer is at least partly no.One of the kinds of classical neural network architectures is what we call an auto-associator.

It just tries to take an input, goes through a set of hidden layers, and comes out with an output.And it's supposed to learn essentially the identity function, that your input is the same as your output.So you think of those binary numbers, you've got like the 1, the 2, the 4, the 8, the 16, and so forth.And so if you want to input 24, you turn on the 16, you turn on the 8.It's like binary 1, 1, and a bunch of zeros.

So I did some experiments in 1998 with the precursors of contemporary deep learning.and what I showed was you could train these networks on all the even numbers and they wouldnever generalize to the odd number. A lot of people thought that I was, I don't know, an idiotor faking the experiment or it wasn't true or whatever, but it is true that with this class ofnetworks that we had in that day, that they would never ever make this generalization.

And it's not that the networks were stupid, it's that they see the world in a different way thanwe do. They were basically concerned, what is the probability that the rightmost output nodeis going to be a one? And as far as they were concerned, in everything they'd ever been trainedon, it was a zero. That node had never been turned on. And so they figured, well, I turn it on now.Whereas a person would look at the same problem and say, well, it's obvious. We're just doing

the thing that corresponds. The Latin for it is mutatis mutandis. We'll change what needs to bechanged. And we do this, this is what algebra is. So I can do f of x equals y plus two, and I cando it for a couple of values. I can tell you if y is three, then x is five, and if y is four, x issix. And now I can do it with some totally different number, like a million. Then you cansay, well, obviously it's a million and two, because you have an algebraic operation that

you're applying to a variable. And deep learning systems kind of emulate that, but they don'tactually do it. The particular example, you could fudge a solution to that particular problem. Thegeneral form of that problem remains that what they learn is really correlations between differentinput and output nodes. And they're complex correlations with multiple nodes involved andso forth. But ultimately, they're correlative. They're not structured over these operations

over variables. Now, someday, people may do a new form of deep learning that incorporates that stuff.And I think it will help a lot.And there's some tentative work on things like differentiable programming right nowthat fall into that category.But the sort of classic stuff like people use for ImageNet doesn't have it.

And you have people like Hinton going around saying symbol manipulation, like what Marcus,what I advocate is like the gasoline engine.It's obsolete.We should just use this cool electric power that we've got with a deep learning.And that's really destructive because we really do need to have the gasoline engine stuff

that represents, I mean, I don't think it's a good analogy,but we really do need to have the stuff that represents symbols.Yeah, and Hinton as well would say that we do need to throw out everythingand start over.Yeah, Hinton said that to Axios,

and I had a friend who interviewed him and tried to pin him downon what exactly we need to throw out, and he was very evasive.Well, of course, because we can't, if he knew,then he'd throw it out himself.But, I mean, you can't have it both ways.

You can't be like, I don't know what to throw out, but I am going to throw out the symbols.I mean, and not just the symbols, but the variables and the operations over variables.And don't forget the operations over variables, the stuff that I'm endorsing and which, youknow, John McCarthy did when he founded AI, that stuff is the stuff that we build mostcomputers out of.

There are people now who say, we don't need computer programmers anymore.Not quite looking at the statistics of how much computer programmers actually get paidright now.We need lots of computer programmers.And most of them, you know, they do a little bit of machine learning, but they still do a lot of code, right?

Code where it's like, you know, if the value of X is greater than the value of Y, then do this kind of thing, like conditionals and comparing operations over variables.Like there's this fantasy you can machine learn anything.There's some things you would never want to machine learn.I would not use a phone operating system that was machine learned.Like you made a bunch of phone calls and you recorded which packets were transmitted and you just machine learned it.

It would be insane.or to build a web browser by taking logs of keystrokesand images, screenshots,and then trying to learn the relation between them.Nobody would ever, no rational person

would ever try to build a browser that way.They would use symbol manipulation,the stuff that I think AI needs to avail itself ofin addition to deep learning.Thank you.

