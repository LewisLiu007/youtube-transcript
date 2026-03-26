---
title: "Cellular Automata and Rule 30 (Stephen Wolfram) | AI Podcast Clips"
channel: lexfridman
url: "https://www.youtube.com/watch?v=VguG_y05Xe8"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Cellular Automata and Rule 30 (Stephen Wolfram) | AI Podcast Clips

So in 2002, you published a new kind of science to which sort of on a personal level, I cancredit my love for cellular automata and computation in general.I think a lot of others can as well.Can you briefly describe the vision, the hope, the main idea presented in this 1,200-pagebook?

Sure.although it took 1200 pages to say in the book so no the the the real idea it's kind of a good wayto get into it is to look at sort of the arc of history and to look at what's happened in kind ofthe development of science i mean there was this sort of big idea in science about 300 years agothat was let's use mathematical equations to try and describe things in the world let's use sort of

the formal idea of mathematical equations to describe what might be happening in the worldrather than, for example, just using sort of logical augmentation and so on. Let's have aformal theory about that. And so there'd been this 300-year run of using mathematical equations todescribe the natural world, which had worked pretty well. But I got interested in how onecould generalize that notion. There is a formal theory, there are definite rules, but what

structure could those rules have? And so what I got interested in was, let's generalize beyondthe purely mathematical rules, and we now have this notion of programming and computing and so on,let's use the kinds of rules that can be embodied in programs as a generalization of the ones thatcan exist in mathematics as a way to describe the world. And so my favorite version of thesekinds of simple rules are these things called cellular automata. And so a typical case...

So wait, what are cellular automata?Fair enough. So typical case of a cellular automaton, it's an array of cells. It's just aline of discrete cells. Each cell is either black or white. And in a series of steps that you canrepresent as lines going down a page, you're updating the color of each cell according toa rule that depends on the color of the cell above it and to its left and right. So it's really

simple. So a thing might be if the cell and its right neighbor are not the same, or the cell onthe left is black or something, then make it black on the next step, and if not, make it white.Typical rule. That rule, I'm not sure I said it exactly right, but a rule very much like what Ijust said has the feature that if you started off from just one black cell at the top, it makes thisextremely complicated pattern. So some rules, you get a very simple pattern. Some rules,

you have the rule is simple. You start them off from a sort of simple seed. You just get thisvery simple pattern. But other rules, and this was the big surprise when I started actually justdoing the simple computer experiments to find out what happens, is that they produce very complicatedpatterns of behavior. For example, this Rule 30 rule has the feature you started from just oneblack cell at the top, makes this very random pattern. If you look at the center column of cells,

you get a series of values. It goes black, white, black, black, whatever it is. That sequence seemsfor all practical purposes random. It's kind of like in math, you compute the digits of pi,3.1415926 whatever. Those digits once computed, I mean, the scheme for computing pi, it's the ratioof the circumference to the diameter of a circle, very well defined. But yet, once you've generatedthose digits, they seem for all practical purposes completely random. And so it is with Rule 30,

that even though the rule is very simple, much simpler, much more computationally obvious thandown the rule for generating digits of pi,even with a rule that simple,you're still generating immensely complicated behavior.Yeah, so if we could just pause on that.

I think you probably have said it and looked at it so long,you forgot the magic of it, or perhaps you don't,you still feel the magic.But to me, if you've never seen sort of,I would say, what is it, a one-dimensional, essentially,

cellular automata, right?And you were to guess what you would seeif you have some cells that only respond to its neighbors,if you were to guess what kind of things you would see,like my initial guess,

even when I first opened your book,A New Kind of Science, right?My initial guess is you would see,I mean, it would be very simple stuff.And I think it's a magical experience to realize

the kind of complexity, you mentioned rule 30,still your favorite cellular automaton?Still my favorite rule, yes.You get complexity, immense complexity.You get arbitrary complexity.

Yes.And when you say randomness down the middle column,that's just one cool way to saythat there's incredible complexity.And that's just, I mean, that's a magical idea.

However you start to interpret it,all the irreducibility discussions, all that,but it's just, I think that has profound philosophicalkind of notions around it too.It's not just, I mean, it's transformational

about how you see the world.I think for me it was transformational.I don't know, we can have all kinds of discussionabout computation and so on, but just, you know,I sometimes think if I were on a desert island

and was, I don't know, maybe it was some psychedelicsor something, but if I had to take one book,I mean, you kind of science would be itbecause you could just enjoy that notion.For some reason, it's a deeply profound notion,

at least to me.I find it that way, yeah.I mean, look, it's been,it was a very intuition breaking thing to discover.I mean, it's kind of like, you know,

you point the computational telescope out thereand suddenly you see, I don't know, you know,in the past, it's kind of like, you know,moons of Jupiter or something,but suddenly you see something that's kind of very unexpected.

And Rule 30 was very unexpected for me.And the big challenge at a personal level was to not ignore it.I mean, people, you know, in other words, you might say, you know.It's a bug.What would you say?

Yeah, what would you say?Yeah, I mean, I.What are we looking at, by the way?Well, I was just generating here.I'll actually generate a Rule 30 pattern.

So that's the rule for Rule 30.And it says, for example, it says here if you have a black cell in the middleand black cell to the left and white cell to the right, then the cell on the next step will bewhite. And so here's the actual pattern that you get starting off from a single black cell at thetop there. And then… That's the initial state, initial condition.

That's the initial thing. You just start off from that, and then you're going down the page.And at every step, you're just applying this rule to find out the new value that you get. And soyou might think, rule that simple, you've got to get this, there's got to be some trace of thatsimplicity here. Okay, we'll run it, let's say, for 400 steps. It's what it does. It's kind ofaliasing a bit on the screen there. But you can see there's a little bit of regularity over on

the left. But there's a lot of stuff here that just looks very complicated, very random. Andthat's a big sort of shock to, was a big shock to my intuition, at least, that that's possible.The mind immediately starts, is there a pattern? There must be a repetitive pattern.Yeah, right.There must be. That's where the mind goes.

So, indeed, that's what I thought at first. And I thought, well, this is kind of interesting,but if we run it long enough, we'll see something will resolve into something simple.And I did all kinds of analysis of using mathematics, statistics, cryptography,whatever, to try and crack it. And I never succeeded. And after I hadn't succeeded fora while, I started thinking, maybe there's a real phenomenon here that is the reason I'm not

succeeding. Maybe, I mean, the thing that for me was sort of a motivating factor was looking atthe natural world and seeing all this complexity that exists in the natural world. The questionis, where does it come from? You know, what secret does nature have that lets it make all thiscomplexity that we humans, when we engineer things, typically are not making? We're typicallymaking things that at least look quite simple to us. And so the shock here was even from something

very simple, you're making something that complex. Maybe this is getting at sort of the secret thatnature has that allows it to make really complex things, even though its underlying rules may notbe that complex. How did it make you feel? If we look at the Newton apple, was there,you took a walk and something profoundly hit you, or was this a gradual thing, a lobster being boiled?The truth of every science discovery is it's not that gradual. I mean, I happen to be interested

in scientific biography kinds of things, and so I've tried to track down how did people come tofigure out this or that thing. And there's always a long kind of sort of preparatory,you know, there's a need to be prepared and a mindset in which it's possible to see something.I mean, in the case of Rule 30, I was around June 1st, 1984, was kind of a silly story in some ways.I finally had a high resolution laser printer. So I was able, so I thought I'm going to generate a

bunch of pictures of the cellular automata, and I generate this one, and I put it on someplane flight to Europe, and I have this with me. And it's like, you know, I really shouldtry to understand this. And this is really, you know, this is I really don't understandwhat's going on. And that was kind of the, you know, slowly trying to see what was happening.It was depressingly unsudden, so to speak, in the sense that a lot of these ideas like

principle of computational equivalence, for example, I thought, well, that's a possiblething.I didn't know if it's correct.Still don't know for sure that it's correct.But it's sort of a gradual thing that these things gradually seem more important than

one thought.I mean, I think the whole idea of studying the computational universe of simple programs,It took me probably a decade, decade and a half to kind of internalize that that wasreally an important idea.And I think if it turns out we find the whole universe lurking out there in the computational

universe, that's a good brownie point or something for the whole idea.But I think that the thing that's strange in this whole question about finding thisdifferent raw material for making models of things.What's been interesting in the arc of history is for 300 years, it's like the mathematicalequations approach.

It was the winner.It was the thing.You want to have a really good model for something that's what you use.The thing that's been remarkable is just in the last decade or so, I think one can seea transition to using not mathematical equations, but programs as the raw material for making

models of stuff.And that's pretty neat.somebody who's kind of lived inside this paradigm shift, so to speak. It is bizarre. I mean, no doubtin sort of the history of science that will be seen as an instantaneous paradigm shift,but it sure isn't instantaneous when it's played out in one's actual life, so to speak. It seems

glacial. And it's the kind of thing where it's sort of interesting because in the dynamics ofsort of the adoption of ideas like that into different fields, the younger the field,the faster the adoption typically, because people are not kind of locked in with the fifthgeneration of people who've studied this field. And it is the way it is, and it can never be anydifferent. And I think watching that process has been interesting. I think I'm fortunate that I

I do stuff mainly because I like doing it. And that makes me kind of thick-skinned about theworld's response to what I do. But that's definitely, you know, and anytime you writea book called something like A New Kind of Science, the pitchforks will come out for theold kind of science. And it was interesting dynamics. I have to say that I was fully awareof the fact that when you see sort of incipient paradigm shifts in science, the vigor of the

negative response upon early introduction is a fantastic positive indicator of good long-termresults. So in other words, if people just don't care, that's not such a good sign.If they're like, oh, this is great, that means you didn't really discover anything interesting.What fascinating properties of Rule 30 have you discovered over the years?You've recently announced the Rule 30 prizes for solving three key problems. Can you maybe

talk about interesting properties that have been kind of revealed, Rule 30 or other cellularautomata and what problems are still before us, like the three problems you've announced.Yeah, yeah, right. So I mean, the most interesting thing about cellular automata is thatit's hard to figure stuff out about them. In a sense, every time you try and bash them with someother technique, you say, can I crack them? The answer is they seem to be uncrackable. They seem

to have the feature that they're showing irreducible computation. You're not able to say,oh, I know exactly what this is going to do. It's going to do this or that.But there's specific formulations of that fact.Yes, right. So, for example, in Rule 30, in the pattern you get just starting from a singleblack cell, you get this very random-looking pattern. And so one feature of that, just look

at the center column and for example we use that for a long time to generate randomness in wolfmanlanguage um just you know what rule 30 produces now the question is can you prove how random itis so for example one very simple question can you prove that it'll never repeat no we haven't beenable to show that it will never repeat we know that if there are two adjacent columns we knowthey can't both repeat but just knowing whether that center column can ever repeat we still don't

even know that. Another problem that I put in my collection of $30,000 for these three prizes forabout Rule 30, I would say this is one of those cases where the money is not the main point,but it just helps motivate somehow the investigation.So there's three problems you propose, you get $30,000 if you solve all three or maybe...be, I don't know. No, it's 10,000 for each. For each, right. The problems, that's right,

money is not the thing. The problems themselves are just clean formulations. It's just, you know,will it ever become periodic? Second problem is, are there an equal number of black and white cells?Down the middle column. Down the middle column. And the third problem is a little bit harder tostate, which is essentially, is there a way of figuring out what the color of a cell at positiont down the center column is with a less computational effort than about t steps.

So in other words, is there a way to jump ahead and say,I know what this is going to do, it's just some mathematical function of t.Or proving that there is no way.Or proving there is no way, yes. But for any one of these, one could discover,you know, we know what Rule 30 does for a billion steps, and maybe we'll know for a trillion steps

before too very long. But maybe at a quadrillion steps, it suddenly becomes repetitive. You mightsay, how could that possibly happen? But so when I was writing up these prizes, I thought, and thisis typical of what happens in the computational universe, I thought, let me find an examplewhere it looks like it's just going to be random forever, but actually it becomes repetitive.and I found one. And it's just, I did a search. I searched, I don't know, maybe a million different

rules with some criterion. And what's sort of interesting about that is I kind of have thisthing that I say in a kind of silly way about the computational universe, which is the animals arealways smarter than you are. That is, there's always some way one of these computationalsystems is going to figure out how to do something, even though I can't imagine how it'sgoing to do it. And I didn't think I would find one that you would think after all these years

that when I found sort of all possible things, funky things, that I would have gotten myintuition wrapped around the idea that these creatures in the computational universe arealways smarter than I'm going to be. Well, they're equivalently smart, right?that's correct and and that makes it that makes one feel very sort of it's it's humbling everytime because every time the thing is is uh you know you think it's going to do this or it's not

going to be possible to do this and it turns out it finds a way of course the promising thing isthere's a lot of other rules like rule 30. it's just rule 30 is oh it's my favorite because ifound it first and that's right but the the problems are focusing on rule 30. it's possiblethat rule 30 is repetitive after a trillion steps.It is possible.

And that doesn't prove anything about the other rules.It does not.But this is a good sort of experimentof how you go about trying to prove somethingabout a particular rule.

Yes, and it also, all these things help build intuition.That is, if it turned out that this was repetitiveafter a trillion steps, that's not what I would expect.And so we learn something from that.The method to do that, though,

would reveal something interesting about the cellular type of stuff.No doubt. Although it's sometimes challenging. I put out a prize in 2007 for a particular Turingmachine that was the simplest candidate for being a universal Turing machine. And the young chap inEngland named Alex Smith, after a smallish number of months, said, I've got a proof. And he did.it took a little while to iterate, but you had a proof. Unfortunately, the proof is a lot of

micro details. It's not like you look at it and you say, aha, there's a big new principle. Thebig new principle is the simplest Turing machine that might have been universal actually isuniversal, and it's incredibly much simpler than the Turing machines that people already knew wereuniversal before that. And so that, intuitionally, is important because it says computationuniversality is closer at hand than you might have thought. But the actual methods are not,

in that particular case, were not terribly illuminated.It would be nice if the methods would also be elegant.That's true. Yeah, no, I mean, I think it's one of these things where,I mean, it's like a lot of what we've talked about earlier, kind of, you know,opening up AIs and machine learning and things of what's going on inside.

And is it just step by step, or can you sort of see the bigger picture more abstractly?It's unfortunate, I mean, with Verma's Last Theorem proof, it's unfortunate that the proofto such an elegant theorem is not, I mean, it doesn't fit into the margins of a page.That's true. But you know, one of the things is that's another consequence of computationalirreducibility. This fact that there are even quite short results in mathematics whose proofs

are arbitrarily long. That's a consequence of all this stuff. And it makes one wonder,how come mathematics is possible at all? Why is it the case? How have people managed to navigatedoing mathematics through looking at things where they're not just thrown into,it's all undecidable. That's its own separate story.And that would be, that would have a poetic beauty to it if people were to find

something interesting about Rule 30, because, I mean, there's an emphasis to this particular rule.It wouldn't say anything about the broad irreducibility of all computations, butit would nevertheless put a few smiles on people's faces of...Well, yeah. But to me, it's like, in a sense, establishing the principle of computationalequivalence, it's a little bit like doing inductive science anywhere. That is, the more

examples you find, the more convinced you are that it's generally true. I mean, whenever we do naturalscience, we say, well, it's true here that this or that happens. Can we prove that it's trueeverywhere in the universe? No, we can't. So it's the same thing here. We're exploring thecomputational universe. We're establishing facts in the computational universe. And that's sort ofa way of inductively concluding general things.

Thank you.
