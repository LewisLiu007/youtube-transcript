---
title: "Ishan Misra: Self-Supervised Deep Learning in Computer Vision | Lex Fridman Podcast #206"
channel: lexfridman
url: "https://www.youtube.com/watch?v=FUS6ceIvUnI"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Ishan Misra: Self-Supervised Deep Learning in Computer Vision | Lex Fridman Podcast #206

The following is a conversation with Ishan Mizra,research scientist at Facebook AI Research,who works on self-supervised machine learningin the domain of computer vision,or in other words, making AI systems understand

the visual world with minimal help from us humans.Transformers and self-attention has been successfully usedby OpenAI's GPT-3 and other language modelsto do self-supervised learning in the domain of language.Ishan, together with Jan LeCun and others,

is trying to achieve the same successin the domain of images and video.The goal is to leave a robotwatching YouTube videos all nightand in the morning, come back to a much smarter robot.

I read the blog post, Self-Supervised Learning,The Dark Matter of Intelligence by Ishan and Jan LeCun,and then listened to Ishan's appearanceon the excellent Machine Learning Street Talk podcast.and I knew I had to talk to him.

By the way, if you're interested in machine learning and AI,I cannot recommend the ML Street Talk podcast highly enough.Those guys are great.Quick mention of our sponsors.Onnit, The Information, Grammarly, and Athletic Greens.

Check them out in the description to support this podcast.As a side note, let me say that for those of youwho may have been listening for quite a while,this podcast used to be called Artificial Intelligence Podcast.because my life passion has always been, will always be, artificial intelligence,

both narrowly and broadly defined. My goal with this podcast is still to have many conversationswith world-class researchers in AI, math, physics, biology, and all the other sciences.But I also want to talk to historians, musicians, athletes, and of course, occasionally comedians.In fact, I'm trying out doing this podcast three times a week now to give me more freedom withthe guest selection, and maybe get a chance

to have a bit more fun.Speaking of fun, in this conversation,I challenge the listener to count the number of timesthe word banana is mentioned.Ishan and I use the word banana as the canonical example

at the core of the hard problem of computer vision,and maybe the hard problem of consciousness.This is the Lex Friedman Podcast,and here is my conversation with Ishan Mizra.What is self-supervised learning?

And maybe even give the bigger basics of what is supervised and semi-supervised learning.And maybe why is self-supervised learning a better term than unsupervised learning?Let's start with supervised learning.So typically for machine learning systems, the way they're trained is you get a bunchof humans.

The humans point out particular concepts.So if it's in the case of images, you want the humans to come and tell you what is presentin the image, draw boxes around them, draw masks of like things, pixels, which are ofparticular categories or not.For NLP, again, there are like lots of these particular tasks say about sentiment analysis,

about entailment and so on.So typically for supervised learning, we get a big corpus of such annotated or labeleddata, and then we feed that to a system and the system is really trying to mimic.So it's taking this input of the data and then trying to mimic the output.So it looks at an image and the human has tagged that this image contains a banana.

And now the system is basically trying to mimic that.So that's its learning signal.And so for supervised learning, we try to gather lots of such data and we train thesemachine learning models to imitate the input output.And the hope is basically by doing so now on unseen or like new kinds of data, this

model can automatically learn to predict these concepts.So this is a standard sort of supervised setting.For semi-supervised setting, the idea typically is that you have, of course, all of the supervisedbut you have lots of other data which is unsupervised or which is not labeled.Now, the problem basically with supervised learning and why you actually have all of

these alternate learning paradigms is supervised learning just does not scale.So if you look at for computer vision, the largest and one of the most popular data setsis ImageNet.So the entire ImageNet data set has about 22,000 concepts and about 14 million images.So these concepts are basically just nouns and they're annotated on images.

images. And this entire data set was a mammoth data collection effort. It actually gave riseto a lot of powerful learning algorithms, is credited with the rise of deep learningas well. But this data set took about 22 human years to collect, to annotate. And it's noteven that many concepts, right? It's not even that many images. 14 million is nothing, really.You have about, I think, 400 million images or so, or even more than that uploaded to

most of the popular social media websites today.So now supervised learning just doesn't scale.If I want to now annotate more concepts, if I want to have various types of fine-grainedconcepts, then it won't really scale.So now you come up to these sort of different learning paradigms, for example, semi-supervised

learning, where the idea is, of course, you have this annotated corpus of supervised data,and you have lots of these unlabeled images.And the idea is that the algorithm should basically try to measure some kind of consistency,or really try to measure some kind of signal on this sort of unlabeled data to make itselfmore confident about what it's really trying to predict.

So by access to this lots of unlabeled data, the idea is that the algorithm actually learnsto be more confident and actually gets better at predicting these concepts.And now we come to the other extreme, which is like self-supervised learning.The idea basically is that the machine or the algorithm should really discover conceptsor discover things about the world or learn representations about the world which are

useful without access to explicit human supervision.So the word supervision is still in the term self-supervised. So what is the supervision signal? And maybe that perhaps is when Jan Makun and you argue that unsupervised is the incorrect terminology here. So what is the supervision signal when the humans aren't part of the picture or not a big part of the picture?Right. So self-supervised, the reason it has the term supervised in itself is becauseyou're using the data itself as supervision. So because the data serves as its own sourceof supervision, it's self-supervised in that way. Now, the reason a lot of people, I mean,

we did it in that blog post with Yann, but a lot of other people have also argued for using thisterm self-supervised. So starting from like 94 from Virginia DeSars group, I think UCSD, and now she'sat UCSD. Jitendra Malik has said this a bunch of times as well. So you have supervised. And thenunsupervised basically means everything which is not supervised. But that includes stuff likesemi-supervised, that includes other like transductive learning, lots of other sort of

settings. So that's the reason like now people are preferring this term self-supervised becauseit explicitly says what's happening. The data itself is the source of supervision and any sortof learning algorithm which tries to extract just sort of data supervision signals from the dataitself is a self-supervising algorithm. But there is within the data a set of tricks whichunlock the supervision. So can you give maybe some examples? And there's innovation,

ingenuity required to unlock that supervision. The data doesn't just speak to you some groundtruth. You have to do some kind of trick. So I don't know what your favorite domain is. So youspecifically specialize in visual learning, but is there favorite examples maybe in language orother domains? Perhaps the most successful applications have been in NLP, language processing.So the idea basically being that you can train models that can, you have a sentence and you

mask out certain words. And now these models learn to predict the masked out words. So if you havelike the cat jumped over the dog, so you can basically mask out cat. And now you're essentiallyasking the model to predict what was missing, what did I mask out? So the model is going to predictbasically a distribution over all the possible words that it knows.And probably it has, like, if it's a well-trained model,

it has a sort of higher probability density for this word, GAT.For vision, I would say the sort of more, I mean, the easier example,which is not as widely used these days, is basically, say, for example, video prediction.So video is, again, a sequence of things.So you can ask the model, so if you have a video of, say, 10 seconds,

you can feed in the first nine seconds to a model and then ask it,hey, what happens basically in the 10th second?Can you predict what's going to happen?And the idea basically is because the modelis predicting something about the data itself.

Of course, you didn't need any humanto tell you what was happeningbecause the 10-second video was naturally captured.Because the model is predicting what's happening there,it's going to automatically learn something

about the structure of the world,how objects move, object permanence,and these kinds of things.So like if I have something at the edge of the table,it'll fall down.

Things like these,which you really don't have to sit and annotate.In a supervised learning setting, I would have to sit and annotate.This is a cup.Now I move this cup.

This is still a cup.And now I move this cup.It's still a cup.And then it falls down.And this is a fallen down cup.

So I won't have to annotate all of these things in a self-supervised setting.Isn't that kind of a brilliant little trick of taking a series of data that is consistentand removing one element in that series and then teaching the algorithm to predict that element?Isn't that, first of all, that's quite brilliant.It seems to be applicable in anything that has the constraint of being a sequence that is consistent with the physical reality.

The question is, are there other tricks like this that can generate the self-supervision signal?So sequence is possibly the most widely used one in NLP.For vision, the one that is actually used for images, which is very popular these days,is basically taking an imageand now taking different crops of that image.

So you can basically decide to crop,say, the top left cornerand you crop, say, the bottom right cornerand asking a network to basically present it with a choice,saying that, okay, now you have this image,

you have this image.Are these the same or not?And so the idea basically is thatbecause in an image,different parts of the image are going to be related.

So for example, if you have a chair and a table,basically these things are going to be close byversus if you take, again,if you have like a zoomed in picture of a chair,if you're taking different crops,

it's going to be different parts of the chair.So the idea basically is that different cropsof the image are related.And so the features or the representationsthat you get from these different crops

should also be related.So this is possibly the most like widely used trickthese days for self-supervised learning in computer vision.So again, using the consistencythat's inherent to physical reality

in visual domain,that's, you know, parts of an image are consistent.And then in the language domain or anything that has sequences,like language or something that's like a time series,then you can chop off parts in time.

It's similar to the story of RNNs and CNNs, of RNNs and Covenants.Ewan Yon-Lacoon wrote the blog post in March 2021 titledSelf-Supervised Learning, The Dark Matter of Intelligence.Can you summarize this blog post and maybe explain the main idea or set of ideas?The blog post was mainly about sort of just telling, I mean, this is really an accepted fact, I would say, for a lot of people now that self-supervised learning is something that is going to play an important role for machine learning algorithms that come in the future and even now.

Let me just comment that we don't yet have a good understanding of what dark matter is.That's true.So maybe the metaphor doesn't exactly transfer, but maybe it's actually perfectly transfers that we don't know.We have an inkling that it'll be a big part of whatever solving intelligence looks like.Right. So I think self-supervised learning, the way it's done right now is, I would say, like the first step towards what it probably should end up like learning or what it should enable us to do.

So the idea for that particular piece was self-supervised learning is going to be a very powerful way to learn common sense about the world or like stuff that is really hard to label.For example, like, is this piece over there heavier than the cup?Now, for all these kinds of things, you'll have to sit and label these things.So supervised learning is clearly not going to scale.So what is the thing that's actually going to scale?

It's probably going to be an agent that can either actually interact with it to lift it up or observe me doing it.So if I'm basically lifting these things up, it can probably reason about, hey, this is taking him more time to lift up or the velocity is different.Whereas the velocity for this is different, probably this one is heavier.So essentially, by observations of the data, you should be able to infer a lot of things about the world without someone explicitly telling you this is heavy, this is not.This is something that can pour.

This is something that cannot pour.This is somewhere that you can sit.This is not somewhere that you can sit.But you just mentioned ability to interact with the world.there's so many questions that are yet to be that are still open which is how do you select a set

of data over which the self-supervised uh learning process works how much interactivity like in theactive learning or the machine teaching context is there what are the reward signals like how muchactual interaction there is with the physical world that kind of thing so that that's a thatcould be a huge question and then on top of that which i have a million questions about which wedon't know the answers to but it's worth talking about is how much reasoning is involved how much

accumulation of knowledge versus something that's more akin to learning or whether that's the thesame thing but so we're like it is truly dark matter we don't know how exactly to do it yeahBut we are, I mean, a lot of us are actually convinced that it's going to be a sort of major thing in machine learning.Let me reframe it then, that human supervision cannot be at large scale the source of the solution to intelligence.Right.

So the machines have to discover the supervision in the natural signal of the world.Right. I mean, the other thing is also that humans are not particularly good labelers.They're not very consistent.For example, what's the difference between a dining table and a table?Is it just the fact that one...

If you just look at a particular table, what makes us say one is dining table and the other is not?Humans are not particularly consistent.They're not very good sources of supervision for a lot of these kind of edge cases.So it may be also the fact that if we want an algorithm or want a machine to solve a particular task for us,we can maybe just specify the end goal.

and like the stuff in between,we really probably should not be specifyingbecause we're not maybe going to confuse it a lot actually.Well, humans can't even answer the meaning of life.So I'm not sure if we're good supervisors

of the end goal either.So let me ask you about categories.Humans are not very good at telling the differencebetween what is and isn't a table, like you mentioned.Do you think it's possible?

Let me ask you like a pretend you're Plato.though. Is it possible to create a pretty good taxonomy of objects in the world? It seems likea lot of approaches in machine learning kind of assume a hopeful vision that it's possible toconstruct the perfect taxonomy, or it exists perhaps out of our reach, but we can alwaysget closer and closer to it. Or is that a hopeless pursuit? I think it's hopeless in some way. So

So the thing is for any particular categorization that you create, if you have a discrete sortof categorization, I can always take the nearest two concepts or I can take a third conceptand I can blend it in and I can create a new category.So if you were to enumerate N categories, I will always find an N plus one categoryfor you.

That's not going to be in the N categories.And I can actually create not just N plus one.I can very easily create far more than N categories.The thing is a lot of things we talk about are actually compositional.So it's really hard for us to come and sit and enumerate all of these out.

And they compose in various weird ways, right?Like you have like a croissant and a donut come together to form a cronut.So if you were to like enumerate all the foods up until, I don't know, whenever the cronutwas about 10 years ago or 15 years ago, then this entire thing called cronut would notexist.

Yeah.I remember there was the most awesome video of a cat wearing a monkey costume.People should look it up.It's great.monkey is that or is that a cat it's a very difficult philosophical question so there is a

concept of similarity between objects so you think that can take us very far just kind of getting agood function a good way to tell which parts of things are similar and which parts of things arevery different i think so yeah so you don't necessarily need to name everything or assigna name to everything to be able to use it.Right.

So there are like lots of Shakespeare said that what's in a name.What's in the name.Yeah.Okay.And I mean, a lot, lots of like, for example, animals, right.

They don't have necessarily a well-formed like syntactic language, but they're ableto go about their day perfectly.The same thing happens for us.So, I mean, we probably look at things and we figure out, oh, this is similarto something else that I've seen before.

And then I can probably learn how to use it.So I haven't seen all the possible doorknobs in the world.But if you show me, like I was able to get into this particular place fairly easily.I've never seen that particular doorknob.So I, of course, related to all the doorknobs that I've seen, and I know exactly how it's going to open.

I have a pretty good idea of how it's going to open.And I think this kind of translation between experiences only happens because of similarity.Because I'm able to relate it to a doorknob.If I related it to a hairdryer, I would probably be stuck still outside, not able to get in.Again, a bit of a philosophical question,

but can similarity take us all the way to understanding a thing?Can having a good function that compares objectsget us to understand something profound about singular objects?I think I'll ask you a question back.What does it mean to understand objects?

Well, let me tell you what that's similar to.No.So there's an idea of sort of reasoning by analogy kind of thing.I think understanding is the process of placing that thing in some kind of network of knowledge that you have.That it perhaps is fundamentally related to other concepts.

So it's not like understanding is fundamentally related by composition of other concepts and maybe in relation to other concepts.and maybe like deeper and deeper understanding is maybe just adding more edges to thatto that graph somehow so maybe it is a composition of similarities i mean ultimatelyit is i suppose it is a kind of embedding in that wisdom space yeah okay wisdom space is goodI think I do think, right?

So similarity does get you very, very far.Is it the answer to everything?I mean, I don't even know what everything is,but it's going to take us really far.And I think the thing is,

things are similar in very different contexts, right?So an elephant is similar to, I don't know,another sort of wild animal.Let's just pick, I don't know, lion.And so in a different way,

because they're both four-legged creatures,they're also land animals.But of course, they're very differentin a lot of different ways.So elephants are like herby boars, lions are not.

So similarity does, similarity and particularly dissimilarity also sort ofactually helps us understand a lot about things.And so that's actually why I think discrete categorization is very hard.Just like forming this particular category of elephant and a particular category oflion, maybe it's good for like, just like taxonomy, biological taxonomies.

But when it comes to like other things, which are not as maybe,for example, like grilled cheese, right?I have a grilled cheese.I dip it in tomato and I keep it outside.Now, is that still a grilled cheese or is that something else?

Right.So categorization is still very useful for solving problems.But is your intuition then sort of the self-supervised should be the, to borrow Jan Lekun's terminology, should be the cake and then categorization, the classification, maybe the supervised like layer should be just like the thing on top, the cherry or the icing or whatever.So if you make it the cake, it gets in the way.of learning? If you make it the cake, then you won't be able to sit and annotate everything.

That's as simple as it is. That's my very practical view on it. In my PhD, I sat downand annotated a bunch of cards for one of my projects. And very quickly, it was in a video,and I was basically drawing boxes around all these cards. And I think I spent about a weekdoing all of that, and I barely got anything done. And basically, this was, I think, my first year ofmy PhD or like second year of my master's.

And then by the end of it, I'm like, okay, this is just hopeless.I can keep doing it.And when I had done that, uh, someone came up to me and they basically told me,oh, this is a pickup truck.This is not a car.

And that's like, aha, this actually makes sense because a pickup truck is not reallylike, what was I annotating?Was I annotating anything that is mobile?Or was I annotating particular sedans or was I annotating SUVs?What was I doing?

By the way, the annotation was bounding boxes.Bounding boxes.Yeah.There's so many deep, profound questions herethat you're almost cheating your way out of

by doing self-supervised learning, by the way,which is like what makes for an object.As opposed to solve intelligence,maybe you don't ever need to answer that question.I mean, this is the question

that anyone that's ever done annotation,because it's so painful, gets to ask,like, why am I doing,drawing very careful line around this object?Like what is the value?

I remember when I first saw semantic segmentationwhere you have like instant segmentationwhere you have a very exact linearound the object in the 2D planeof a fundamentally 3D object projected on a 2D plane.

So you're drawing a line around a carthat might be occluded.There might be another thing in front of it,but you're still drawing the lineof the part of the car that you see.

how is that the car?Why is that the car?Like I had like an existential crisis every time.Like how is that going to help us understanda soft computer vision?

I'm not sure I have a good answer to what's better.And I'm not sure I share the confidence that you havethat self-supervised learning can take us far.I think I'm more and more convincedthat it's a very important component,

but I still feel like we need to understand what makeslike this, this like dream of maybewhat it's called like symbolic AI of, of arriving.Like once you have this common sense base,be able to play with these concepts and build graphs

or hierarchies of concepts on top,in order to then like form a deep senseof this three-dimensional world or four-dimensional worldand be able to reason and then project thatonto a 2D plane in order to interpret a 2D image.

Can I ask you just an out there question?I remember, I think Andre Kapati had a blog postabout computer vision, like being really hard.I forgot what the title was, but it was many, many years ago.And he had, I think President Obama stepping on a scale

and there was humor and there was a bunch of people laughingand whatever.And the interesting,there's a lot of interesting things about that image.And I think Andre highlighted a bunch of things

about the image that us humans are ableto immediately understand.Like the idea, I think, of gravityand that you can, you have the concept of a weight.You have a, you immediately project,

because of our knowledge of poseand how human bodies are constructed,you understand how the forces are being appliedwith the human body.The really interesting other thing

you're able to understand there's multiple people looking at each other in the image.You're able to have a mental model of what the people are thinking about. You're able to inferlike, oh, this person is probably thinks like is laughing at how humorous the situation is.And this person is confused about what the situation is because they're looking this way.We're able to infer all of that. So that's human vision. How difficult is computer vision?

in order to achieve that level of understanding?And maybe how big of a partdoes self-supervised learning play in that, do you think?And do you still, you know,that was like over a decade ago,

I think Andre and I think a lot of people agreedthat computer vision is really hard.Do you still think computer vision is really hard?I think it is, yes.And getting to that kind of understanding,

I mean, it's really out there.So if you ask me to solve just that particular problem,I can do it the supervised learning route.I can always construct a data set and basically predict,oh, is there humor in this or not?

And of course I can do it.Actually, that's a good question.Do you think you can, okay, okay.Do you think you can do human supervised annotationof humor?

To some extent, yes, I'm sure it'll work.I mean, it won't be as bad as like randomly guessing.I'm sure it can still predict whether it's humorousor not in some way.Yeah, maybe like Reddit upvotes is the signal.

I don't know.I mean, it won't do a great job, but it'll do something.It may actually be like, it may find certain thingswhich are not humorous, humorous as well,which is going to be bad for us.

But I mean, it'll do a, it won't be random.Yeah, kind of like my sense of humor.Okay, so fine.So you can, that particular problem, yes.But the general problem you're saying is hard.

The general problem is hard.And I mean, self-supervised learningis not the answer to everything.Of course it's not.I think if you have machines

that are going to communicate with humans at the end of it,you want to understand what the algorithm is doing, right?You want it to be able to produce an output that you can decipher, that you can understand,or it's actually useful for something else, which again is a human.So at some point in this sort of entire loop, a human steps in.

And now this human needs to understand what's going on.And at that point, this entire notion of language or semantics really comes in.If the machine just spits out something, and if we can't understand it, then it's not reallythat useful for us.So self-supervised learning is probably going to be useful for a lot of the things before

that part.before the machine really needs to communicate a particular kind of output with a human.Because, I mean, otherwise, how is it going to do that without language?Or some kind of communication.But you're saying that it's possible to build a big base of understanding or whatever.

Concepts.Concepts.Concepts, yeah.Like common sense concepts.Supervised learning in the context of computer vision is something you've focused on,

but that's a really hard domainand it's kind of the cutting edgeof what we're as a community working on today.Can we take a little bit of a step backand look at language?

Can you summarize the history of successof self-supervised learningin natural language processing, language modeling?What are transformers?What is the masking,

the sentence completion that you mentioned before?How does it lead us to understand anything?Semantic meaning of words,syntactic role of words and sentences.So I'm of course not the expert in NLP. I kind of follow it a little bit from the sides. So the main

sort of reason why all of this masking stuff works is I think it's called the distributionalhypothesis in NLP. The idea basically being that words that occur in the same contextshould have similar meaning. So if you have the blank jumped over the blank, it basically,whatever is like in the first blank is basically an object that can actually jump,is going to be something that can jump.

So a cat or a dog or I don't know, sheep, something,all of these things can basically bein that particular context.And now, so essentially the idea is thatif you have words that are in the same context

and you predict them, you're going to learnlots of useful things about how words are related.Because you're predicting by looking at their contextwhat the word is going to be.So in this particular case,

the blank jumped over the fence.So now if it's a sheep, the sheep jumped over the fence,the dog jumped over the fence.So essentially the algorithm or the representation basically puts together these two conceptstogether. So it says, okay, dogs are going to be kind of related to sheep because both of them

occur in the same context. Of course, now you can decide depending on your particular applicationdownstream, you can say that dogs are absolutely not related to sheep because, well, I don't,I really care about dog food, for example. I'm a dog food person and I really want to give thisdog food to this particular animal. So depending on what your downstream application is, of course,this notion of similarity or this notion or this common sense that you've learned may not be

applicable. But the point is basically that this, just predicting what the blanks are,is going to take you really, really far. So there's a nice feature of language thatthe number of words in a particular language is very large, but it's finite. And it's actuallynot that large in the grand scheme of things. I still got it because we take it for granted.So first of all, when you say masking, you're talking about this very process of the blank, of removing words from a sentence, and then having the knowledge of what word went there in the initial data set.

That's the ground truth that you're training on, and then you're asking the neural network to predict what goes there.That's like a little trick.It's a really powerful trick.The question is how far that takes us, and the other question is, is there other tricks?Because to me, it's very possible there's other very fascinating tricks.

I'll give you an example.In autonomous driving, there's a bunch of tricks that give you the self-supervised signal back.For example, very similar to sentences, but not really,which is you have signals from humans driving the car,because a lot of us drive cars to places.

And so you can ask the neural network to predictwhat's going to happen in the next two secondsfor a safe navigation through the environment.And the signal comes from the factthat you also have knowledge of what happened

in the next two seconds, because you have video of the data.The question in autonomous driving, as it is in language,can we learn how to drive autonomouslybased on that kind of self-supervision?Probably the answer is no.

The question is how good can we get?And the same with language, how good can we get?And are there other tricks?Like we get sometimes super excitedby this trick that works really well,

but I wonder, it's almost like mining for gold.I wonder how many signals there are in the datathat could be leveraged that are like there.I just wanted to kind of linger on thatbecause sometimes it's easy to think that maybe

this masking process is self-supervised learning.No, it's only one method.So there could be many, many other methods,many tricky methods, maybe interesting waysto leverage human computation in very interesting ways

that might actually border on semi-supervised learning,something like that.Obviously the internet is generated by humansat the end of the day.So all that to say is, what's your sense,

in this particular context of language,how far can that masking process take us?So it has stood the test of time, right?I mean, so Word2Vec, the initial sort of NLP techniquethat was using this to now, for example,

like all the BERT and all these big models that we get,BERT and Roberta, for example,all of them are still sort of basedon the same principle of masking.It's taken us really far.

I mean, you can actually do things like,these two sentences are similar or not, whether this particular sentence follows this othersentence in terms of logic. So entailment, you can do a lot of these things with justthis masking trick. So I'm not sure if I can predict how far it can take us because whenit first came out, when Word2vec was out, I don't think a lot of us would have imagined

that this would actually help us do some kind of entailment problems and really that well.And so just the fact that by just scaling up the amount of data that we're trainingon and using better and more powerful neural network architectures has taken us from thatto this is just showing you how maybe poor predictors we are.As humans, how poor we are at predicting how successful a particular technique is going

to be.So I think I can say something now, but 10 years from now, I'll look completely stupidbasically predicting this.In the language domain, is there something in your work that you find useful and insightfultransferable to computer vision, but also just, I don't know, beautiful and profound that I think

carries through to the vision domain. I mean, the idea of masking has been very powerful. It hasbeen used in vision as well for predicting, like you say, the next sort of, if you have N sort offrames and you predict what's going to happen in the next frame. So that's been very powerful.In terms of modeling, like in just terms in terms of architecture, I think you would have askedabout transformers a while back. That has really become, like it has become super exciting for

computer vision now. Like in the past, I would say year and a half, it's become really powerful.What's a transformer?Right. I mean, the core part of a transformer is something called the self-attention model.So it came out of Google. And the idea basically is that if you have N elements,what you're creating is a way for all of these N elements to talk to each other.

So the idea basically is that you are paying attention. Each element is paying attention toeach of the other element. And basically by doing this, it's really trying to figure out,you're basically getting a much better view of the data.So for example, if you have a sentence of like four words,the point is if you get a representation

or a feature for this entire sentence,it's constructed in a way such that each wordhas paid attention to everything else.Now, the reason it's like different from say,what you would do in a conf net

is basically that in the conf net,you would only pay attention to a local window.So each word would only pay attention to its next neighboror like one neighbor after that.And the same thing goes for images.

In images, you would basically pay attention to pixels in a three cross three or a seven cross seven neighborhood.And that's it.Whereas with the transformer, the self-attention mainly, the sort of idea is that each element needs to pay attention to each other element.And when you say attention, maybe another way to phrase that is you're considering a context, a wide context in terms of the wide context of the sentence in understanding the meaning of a particular word.and in computer vision that's understanding a larger context to understand the local pattern

of a particular local part of an image. Right. So basically, if you have, say,again, a banana in the image, you're looking at the full image first. So whether it's like,you know, you're looking at all the pixels that are off a kitchen, off a dining table and so on,and then you're basically looking at the banana also. Yeah. By the way, in terms of if we wereto train the funny classifier, there's something funny about the word banana.

Yeah. Just wanted to anticipate that.I am wearing a banana shirt, so yeah.Is there bananas on it?Okay, so masking has worked for the vision context as well.And so this transformer idea has worked as well.

So basically looking at all the elements to understand a particular elementhas been really powerful in vision.The reason is like a lot of things when you're looking at them in isolation.So if you look at just a blob of pixels,so Antonio Torralba at MIT used to have this like really famous image,

which I looked at when I was a PhD student.where he would basically have a blob of pixels and he would ask you, hey, what is this?And it looked basically like a shoe or like it could look like a TV remote. It could look likeanything. And it turns out it was a beer bottle. But I'm not sure it was one of these three things,but basically he showed you the full picture and then it was very obvious what it was.

But the point is just by looking at that particular local window, you couldn't figure out.Yeah.Because of resolution, because of other things, it's just not easy always to just figure outby looking at just the neighborhood of pixels, what these pixels are.Yeah.

And the same thing happens for language as well.For the parameters that have to learn something about the data,you need to give it the capacity to learn the essential things.Like if it's not actually able to receive the signal at all,then it's not going to be able to learn that signal.

And in order to understand images and to understand language,you have to be able to see words in their full context.Okay, what is harder to solve, vision or language?Visual intelligence or linguistic intelligence?So I'm going to say computer vision is harder. My reason for this is basically that

language of course has a big structure to it because we developed it. Whereas vision issomething that is common in a lot of animals. Everyone is able to get by, a lot of these animalson earth are actually able to get by without language. And a lot of these animals we alsodeem to be intelligent. So clearly intelligence does have like a visual component to it. And yes,of course, in the case of humans, it of course also has a linguistic component.

but it means that there is something far more fundamental about vision than there is aboutlanguage and i'm sorry to anyone who disagrees but yes this is what i feel so that's being a littlebit reflected in the challenges that have to do with the the progress of self-supervised learningwould you say or is that just the peculiar accidents of the progress of the ai communitythat we focused on link or we discovered self-attention and transformers in the context

of language first so like the self-supervised learning success was actually uh for vision hasnot much to do with the transformers part i would say it's actually been independent a little biti think it's just that the signal was a little bit different for uh vision than there was forlike nlp and probably nlp yeah folks discovered it before so for vision the main success has basicallybeen this like crops so far like taking different crops of images whereas for nlp it was this

this masking thing.But also the level of success is still much higherfor language.Yes, it has.So that has a lot to do with,

I mean, I can get into a lot of details.For this particular question, let's go for it.Okay, so the first thing is language is very structured.So you are going to produce a distributionover a finite vocabulary.

English has a finite number of words.It's actually not that large.And you need to produce basically,when you're doing this masking thing,all you need to do is basically tell me

which one of these like 50,000 words it is.That's it.Now for vision, let's imagine doing the same thing.We're basically going to blank out a particular partof the image and we ask the network

or this neural network to predictwhat is present in this missing patch.It's combinatorially large, right?You have 256 pixel values.If you're even producing basically a seven cross seven

or a 14 cross 14 like window of pixels,at each of these 169 or each of these 49 locations,you have 256 values to predict.And so it's really, really large.And very quickly, the kind of prediction problems

that we are setting upare going to be extremely intractable for us.And so the thing is for NLP, it has been really successfulbecause we are very good at predicting,doing this distribution over a finite set.

And the problem is when this set becomes really large,we are going to become really, really badat making these predictionsand at solving basically this particular set of problems.So if you were to do it exactly in the same way

NLP for vision, there is very limited success. The way stuff is working right now is actuallynot by predicting these masks. It's basically by saying that you take these two crops fromthe image, you get a feature representation from it, and just saying that these two features,so they're like vectors, just saying that the distance between these vectors shouldbe small. And so it's a very different way of learning from the visual signal than there

is from NLP. Okay, the other reason is the distributional hypothesis that we talked aboutNLP, right? So a word given its context, basically the context actually supplies a lot of meaning tothe word. Now, because there are just finite number of words and there is a finite way inlike which we compose them, of course, the same thing holds for pixels, but in language, there'sa lot of structure, right? So I always say whatever, the dash jumped over the fence,

for example. There are lots of these sentences that you'll get. And from this, you can actuallylook at this particular sentence might occur in a lot of different contexts as well. This exactsame sentence might occur in a different context. So the sheep jumped over the fence, the cat jumpedover the fence, the dog jumped over the fence. So you immediately get a lot of these words,which are because this particular token itself has so much meaning, you get a lot of these tokens

or these words, which are actually going to have sort of this related meaning across,given this context. Whereas for vision, it's much harder. Because just by like pure,like the way we capture images, lighting can be different.There might be like different noise in the sensor.So the thing is, you're capturing a physical phenomenon

and then you're basicallygoing through a very complicated pipeline of like image processing.And then you're translating that into some kind of like digital signal.Whereas with language, you write it downand you transfer it to a digital signal, almost like it's a lossless like transfer.

And each of these tokens are very, very well defined.There could be a little bit of an argument therebecause language as written down is a projection of thought.This is one of the open questions is if you perfectly can solve language,are you getting close to being able to solve easily

with flying colors past the Turing test kind of thing?It's similar but different than the computer vision problemis in the 2D plane is a projection of a three-dimensional world.So perhaps there are similar problems there.Maybe this is a good-

I mean, I think what I'm saying is NLP is not easy.Of course, don't get me wrong.Like abstract thought expressed in knowledgeor knowledge basically expressed in languageis really hard to understand, right?

I mean, we've been communicating with language for so longand it is of course a very complicated concept.The thing is at least getting like somewhat reasonable,like being able to solve some kind of reasonable taskswith language, I would say slightly easier

than it is with computer vision yeah i would say yeah so that's well put i would say gettingimpressive performance on language is uh easier that i feel like for both language and computervision there's going to be this wall of like a you like uh this hump you have to overcometo achieve superhuman level performance or human level performance and i feel like for languagethat was farther away so you can get pretty nice you can do a lot of tricks you can show

really impressive performance you can even fool people that you're uh tweeting or you're rightblog post writing or your question answering uh is has intelligence behind it but to trulydemonstrate understanding of dialogue of continuous long-form dialogue that would requireperhaps big breakthroughs. In the same way in computer vision, I think the big breakthroughsneed to happen earlier to achieve impressive performance. This might be a good place to,

you already mentioned it, but what is contrastive learning and what are energy-based models?Contrastive learning is sort of the paradigm of learning where the idea is that you are learningthis embedding space or so you're learning this sort of vector space of all your concepts. AndAnd the way you learn that is basically by contrasting.So the idea is that you have a sample,

you have another sample that's related to it.So that's called the positive.And you have another sample that's not related to it.So that's negative.So for example, let's just take an NLP

or in a simple example in computer vision.So you have an image of a cat, you have an image of a dog,and for whatever application that you're doing,say you're trying to figure out what pets are,you're seeing that these two images are related.

So image of a cat and dog are related,but now you have another third image of a bananabecause you don't like that word.So now you basically have this banana.Thank you for speaking to the crowd.

And so you take both of these imagesand you take the image from the cat,the image from the dog,you get a feature from both of them.And now what you're training the network to do

is basically pull both of these features togetherwhile pushing them away from the feature of a banana.So this is the contrastive part.So you're contrasting against the banana.So there's always this notion of a negative and a positive.

Now, energy-based models are like one waythat Jan sort of explains a lot of these methods.So Jan basically, I think a couple of yearsor more than that, like when I joined Facebook,Jan used to keep mentioning this word energy-based models.

And of course I had no idea what he was talking about.So then one day I caught him in one of the conference roomsand I'm like, can you please tell me what this is?So then like very patiently,he sat down with like a marker and a whiteboard.

And his idea basically is thatrather than talking about probability distributions,you can talk about energies of models.So models are trying to minimize certain energiesin certain space,

or they're trying to maximize a certain kind of energy.And the idea basically is that you can explain a lotof the contrastive models, GANs, for example,which are like generative adversarial networks.A lot of these modern learning methods or VAEs,

which are variational autoencoders,you can really explain them very nicelyin terms of an energy functionthat they're trying to minimize or maximize.And so by putting this common sort of language

for all of these models,what looks very different in machine learning that,oh, VAEs are very different from what GANs are,are very, very different from what contrastive models are.You actually get a sense of like,

oh, these are actually very, very related.It's just that the way or the mechanismin which they're sort of maximizingor minimizing this energy function is slightly different.It's revealing the commonalities

between all these approachesand putting a sexy word on top of it, like energy.And so similarities,two things that are similar have low energy.like the low energy signifying similarity.

Right, exactly.So basically the idea is that if you were to imaginelike the embedding as a manifold, a 2D manifold,you would get a hill or like a high sort of peakin the energy manifold,

wherever two things are not related.And basically you would have like a dipwhere two things are related.So you'd get a dip in the manifold.And in the self supervised context,

how do you know two things are relatedand two things are not related?Right.where all the sort of ingenuity or tricks comes in right so for example like uh you can take the fillin the blank problem or you can take in the context problem and what you can say is two words

that are in the same context are related two words that are in different contexts are not relatedfor images basically two crops from the same image are related and whereas a third image is notrelated at all for a video it can be two frames from that video related because they're likely tocontain the same sort of concepts in them whereas a third frame from a different video is notrelated so it basically is it's a very general term contrasted learning has nothing really to

do with self-supervised learning it actually is very popular in for example like any kind ofmetric learning or any kind of embedding learning so it's also used in supervised learning it's alland the thing is because we are not really using labels to get these positive or negative pairsit can basically also be used for self-supervised learning so you mentioned one of the ideas in thethe vision context that works is to have different crops.

So you could think of that as a way to sort of manipulating the datato generate examples that are similar.Obviously, there's a bunch of other techniques.You mentioned lighting.In images, lighting is something that varies a lot,

and you can artificially change those kinds of things.There's the whole broad field of data augmentation,which manipulates images in order to increase arbitrarily the size of the data set.First of all, what is data augmentation?And second of all, what's the role of data augmentation in self-supervised learning and

contrastive learning?So data augmentation is just a way, like you said, it's basically a way to augment thedata.So you have, say, n samples.And what you do is you basically define some kind of transforms for the sample.

So you take your, say, image, and then you define a transform where you can just increase,say the colors or the brightness of the image or increase or decrease the contrast of the image,for example, or take different crops of it. So data augmentation is just a process to basicallyperturb the data or augment the data. And so it has played a fundamental role for computer vision,for self-supervised learning especially. The way most of the current methods work,

contrastive or otherwise, is by taking an image, in the case of images, is by taking an imageand then computing basically two perturbations of it.So these can be two different crops of the image with different types of lighting or differentcontrasts or different colors. So you jitter the colors a little bit and so on.And now the idea is basically because it's the same object or because it's related concepts in

both of these perturbations, you want the features from both of these perturbations to be similar.So now you can use a variety of different ways to enforce this constraint, like these featuresbeing similar. You can do this by contrastive learning. So basically both of these things arepositives. A third sort of image is negative. You can do this basically by like clustering.For example, you can say that both of these images should, the features from both of these

images should belong in the same cluster because they're related. Whereas image, like another imageshould belong to a different cluster. So there's a variety of different ways to basically enforcethis particular constraint. By the way, when you say features, it means there's a very largeneural network that extracting patterns from the image and the kind of patterns that extracts shouldbe either identical or very similar right that's what that means so the neural network basically

takes in the image and then outputs a set of like basically a vector of like numbers and that's thefeature and you want this feature for both of these like different crops that you computed tobe similar so you want this vector to be identical uh in its like entries for example be likeliterally close in this multi-dimensional space to each other right and like you said close canmean part of the same cluster or something like that in this large space first of all that i

wonder if there is connection to the way humans learn to this almost like maybe subconsciouslyin order to understand a thing you kind of have to see it from two three multiple angles i wonderI have a lot of friends who are neuroscientists maybeand cognitive scientists.I wonder if that's in there somewhere.

Like in order for us to place a concept in its proper place,we have to basically crop it in all kinds of ways,do basic data augmentation on itin whatever very clever ways that the brain likes to do.Like spinning around in our mind somehow

that is very effective.So I think for some of them, we need to do it.So like babies, for example, pick up objects, like move them, put themclose to their eye and whatnot.Yeah.

But for certain other things, actually we are good atimagining it as well.Right.So if you, I have never seen, for example, an elephant from the top, I've neverbasically looked at it from like top down.

Yeah.But if you showed me a picture of it, I could very well tellyou that that's an elephant.Um, so I think some of it we're just like, we naturally build it or transfer it fromother objects that we've seen to imagine what it's going to look like.

Has anyone done that with the augmentation?Like imagine all the possible things that are occluded or not there, but not just like normal things, like wild things, but that are nevertheless physically consistent.So, I mean, people do kind of like occlusion based augmentation as well.So you place in like a random like box, gray box to sort of mask out a certain part of the image.And the thing is basically you're kind of occluding it.

For example, you place it, say, on half of a person's face.So basically saying that, you know, something below their nose is occluded because it'sgrayed out.So, you know, I meant like you have like, what is it, a table and you can't see behindthe table and you imagine there's a bunch of elves with bananas behind the table.

Like, I wonder if there's useful to have a wild imagination for the network because that'spossible.Well, maybe not elves, but like puppies and kittens or something like that.Just have a wild imagination and constantly be generating that wild imagination.Because in terms of data augmentation that's currently applied, it's super ultra, very boring.

It's very basic data augmentation.I wonder if there's a benefit to being wildly imaginable while trying to be consistent with physical reality.I think it's kind of a chicken and egg problem, right?Because to have amazing data augmentation, you need to understand what the scene is.Right.

And what we're trying to do data augmentation to learn what a scene is anyway.So it's basically just keeps going on.Before you understand it, just put L's with bananas until you know it's not to be true.Just like children have a wild imagination until the adults ruin it all.Okay.

So what are the different kinds of data augmentationthat you've seen to be effective in visual intelligence?For like vision, it's a lot of these image filtering operations.So like blurring the image,you know, all the kind of Instagram filters that you can think of.

So like arbitrarily like make the red super red, make the green super greens,like saturate the image.Rotation cropping.Rotation cropping.Exactly.

All of these kind of things.Said lighting is a really interesting one.Yes. To me.That feels like really complicated to do.So I mean, they don't

the augmentations that we work on aren't like that involved.They're not going to be like physically realistic versions of lighting.It's not that you're assuming that there's a light source upand then you're moving it to the right.and then what does the thing look like?

It's really more about like brightness of the image,overall brightness of the imageor overall contrast of the image and so on.But this is a really important point to me.I always thought that data augmentation

holds an important keyto big improvements in machine learning.And it seems that it is an important aspectof self-supervised learning.So I wonder if there's big improvements to be achieved

on much more intelligent kinds of data augmentation.For example, currently,maybe you can correct me if I'm wrong,data augmentation is not parametrized.You're not learning.

To me, it seems like data augmentationpotentially should involve more learningthan the learning process itself.You're almost like thinking of like generative kind of,it's the elves with bananas.

You're trying to, it's like very active imaginationof messing with the world and teaching that mechanismfor messing with the world to be realistic.Because that feels like, I mean, it's imagination.It's just as you said, it feels like us humans are able to

maybe sometimes subconsciously imagine,before we see the thing, imagine what we're expecting to seelike maybe several options.And especially, we probably forgot,but when we were younger,

probably the possibilities were wilder, more numerous.And then as we get older,we become to understand the worldand the possibilities of what we might seebecomes less and less and less.

So I wonder if you think there's a lot of breakthroughsyet to be had in data augmentation.And maybe also, can you just comment on the stuff we have?Is that a big part of self-supervised learning?Yes, so data augmentation is like key

to self-supervised learning.That has like the kind of augmentation that we're usingAnd basically the fact that we're trying to learnthese neural networks that are predicting these featuresfrom images that are robust under data augmentation

has been the key for visual self-supervised learning.And they play a fairly fundamental role to it.Now, the irony of all of this is thatfor deep learning purists will saythe entire point of deep learning

is that you feed in the pixels to the neural networkand it should figure out the patterns on its own.So if it really wants to look at edges,it should look at edges.You shouldn't really go and handcraft

like features, right?You shouldn't go tell it that look at edges.So data augmentation should basically bein the same category, right?Why should we tell the network

or tell this entire learning paradigmwhat kinds of data augmentation that we're looking for?We are encoding a very sort of human specific bias therethat we know things are like,if you change the contrast of the image,

it should still be an appleor it should still see apple, not banana.And basically if we change like colors,it should still be the same kind of concept.Of course, this is not one,

this doesn't feel like super satisfactorybecause a lot of our human knowledgeor our human supervisionis actually going into the data augmentation.So although we are calling it self-supervised learning,

a lot of the human knowledge is actually being encodedin the data augmentation process.So it's really like we've kind of sneaked awaythe supervision at the input,and we're like really designing these nice list

of data augmentations that are working very well.Of course, the idea is that it's much easierto design a list of data augmentationthan it is to do.So humans are doing, nevertheless,

doing less and less work.And maybe leveraging their creativity more and more.And when we say data augmentation is not parameterized,it means it's not part of the learning process.Do you think it's possible to integrate

some of the data augmentation into the learning process?I think so. I think so.And in fact, it will be really beneficial for us.Because a lot of these data augmentationthat we use in vision are very extreme.

For example, like when you have certain concepts,again, a banana.You take the banana and then basicallyyou change the color of the banana, right?So you make it a purple banana.

Now this data augmentation processis actually independent of the,like it has no notion of what is present in the image.So it can change this color arbitrarily.It can make it a red banana as well.

And now what we're doing is we're telling the neural networkthat this red banana and so crop of this image,which has the red banana and a crop of this imagewhere I changed the color to a purple banana should be,the features should be the same.

Bananas aren't red or purple, mostly.So really the data augmentation processshould take into account what is present in the imageand what are the kinds of physical realitiesthat are possible.

It shouldn't be completely independent of the image.So you might get big gainsif you, instead of being drastic,do subtle augmentation, but realistic augmentation.Right, realistic.

I'm not sure if it's subtle, but like realistic for sure.If it's realistic, then even subtle augmentationwill give you big benefits.Exactly, yeah.And it will be like for particular domains, you might actually see like if, for example,

now we're doing medical imaging, there are going to be certain kinds of like geometricaugmentations that are not really going to be very valid for the human body.So if you were to like actually loop in data augmentation into the learning process, itwill actually be much more useful.Now this actually does take us to maybe a semi-supervised kind of a setting because

you do want to understand what is it that you're trying to solve.So currently self-supervised learning kind of operates in the wild, right?So you do the self-supervised learning and the purists and all of us basically say that,okay, this should learn useful representations and they should be useful for any kind ofend task, no matter it's like banana recognition or like autonomous driving.

Now it's a tall order.Maybe the first baby step for us should be that, okay, if you're trying to loop in thisdata augmentation into the learning process, then we at least need to have some sense ofwhat we're trying to do.Are we trying to distinguish between different types of bananas?

Or are we trying to distinguish between banana and apple?Or are we trying to do all of these things at once?And so some notion of what happens at the end might actually help us do much better at this side.Let me ask you a ridiculous question.If I were to give you a black box, like a choice to have an arbitrary large data set of real natural data

versus really good data augmentation algorithms,which would you like to train in a self-supervised way on?So natural data from the internet, arbitrary large,so unlimited data,or it's like more controlled,

good data augmentation on the finite data set.The thing is like,because our learning algorithms for vision right nowreally rely on data augmentation,even if you were to give me like an infinite source

of like image data,I still need a good data augmentation algorithm.You need something that tells you that two things are similar.Right.And so something, because you've given me an arbitrarily large data set, I still need

to use data augmentation to take that image, construct like these two perturbations ofit, and then learn from it.So the thing is our learning paradigm is very primitive right now.Yeah.Even if you were to give me lots of images, it's still not really useful.

A good data augmentation algorithm is actually going to be more useful.So you can like reduce down the amount of data that you give me by like 10 times.but if you were to give me a good data augmentation algorithm that will probably dobetter than giving me like 10 times the size of that data but me having to rely on like a veryprimitive data augmentation algorithm like through tagging and all those kinds of things is there a

way to discover things that are semantically similar on the internet obviously there is butit might be extremely noisy and the difference might be farther away than you would be comfortablewith so i mean yes tagging will help you a lot it'll actually go a very long way in figuringout what images are related or not. But then the purists would argue that when you're using humantags, because these tags are like supervision, is it really self-supervised learning now?

Because you're using human tags to figure out which images are similar.Hashtag no filter means a lot of things.Yes. I mean, there are certain tags which are going to be applicable pretty much to anything.So they're pretty useless for learning. But I mean, certain tags are actually likeThe Eiffel Tower, for example, or the Taj Mahal, for example.

These tags are very indicative of what's going on.And they are human supervision.Yeah.This is one of the tasks of discovering from human-generated data strong signals that could be leveraged for self-supervision.Humans are doing so much work already.

Many years ago, there was something that was called, I guess, human computation back in the day.Humans are doing so much work.it would be exciting to discover ways to leverage the work they're doingto teach machines without any extra effort from them.An example could be, like we said, driving.

Humans are driving and machines can learn from the driving.I always hoped that there could be some supervision signaldiscovered in video games because there's so many people that play video gamesthat it feels like so much effort is put into video games,into playing video games,

and you can design video games somewhat cheaplyto include whatever signals you want.It feels like that could be leverage somehow.So people are using that.There are actually folks right here in UT Austin,

like Philip Graham Bull is a professor at UT Austin.He's been working on video games as a source of supervision.I mean, it's really fun.As a PhD student, getting to basically play video games all day.Yeah, so I do hope that kind of thing scales.

And ultimately, it boils down to discovering some undeniably very good signal.It's like masking in NLP.But that said, there's non-contrastive methods.What do non-contrastive energy-based self-supervised learning methods look like?And why are they promising?

So like I said about contrastive learning, you have this notion of a positive and a negative.Now, the thing is, this entire learning paradigm really requires access to a lot of negativesto learn a good sort of feature space.The idea is if I tell you, okay, so a cat and a dog are similar, and they're very differentfrom a banana.

The thing is, this is a fairly simple analogy, right?Because bananas look visually very different from what cats and dogs do.So very quickly, if this is the only source of supervision that I'm giving you, your learningis not going to be like after a point, the neural network is really not going to learna lot because the negative that you're getting is going to be so random. So it can be, oh,

a cat and a dog are very similar, but they're very different from a Volkswagen Beetle. Nowthis car looks very different from these animals again. So the thing is in contrast to learningthe quality of the negative sample really matters a lot.And so what has happened is basically that typically these methods that are contrastivereally require access to lots of negatives, which becomes harder and harder to sort of

scale when designing alerting algorithm. So that's been one of the reasons why non-contrastivemethods have become popular and why people think that they're going to be more useful.So a non-contrastive method, for example, like clustering is one non-contrastive method.The idea basically being that you have two of these samples, so the cat and dog are twocrops of this image. They belong to the same cluster. And so essentially you're basically

doing clustering online when you're learning this network, and which is very differentfrom having access to a lot of negatives explicitly.The other way which has become really popularis something called self-distillation.So the idea basically is that you have a teacher network

and a student network,and the teacher network produces a feature.So it takes in the imageand basically the neural network figures out the patterns,gets the feature out.

And there's another neural network,which is the student neural network,and that also produces a feature.And now all you're doing is basically sayingthat the features produced by the teacher network

and the student network should be very similar.That's it.There is no notion of a negative anymore.And that's it.So it's all about similarity maximization

between these two features.And so all I need to now do is figure outhow to have these two sorts of parallel networks,a student network and a teacher network.And basically researchers have figured out

very cheap methods to do this.So you can actually have for free,really two types of neural networks.They're kind of related, but they're different enoughthat you can actually basically

have a learning problem set up.So you can ensure that they always remain different enoughso the thing doesn't collapse into something boring.Exactly.So the main sort of enemy of self-supervised learning,

any kind of similarity maximization technique is collapse.It's a collapse means that you learnthe same feature representation for all demons in the world,which is completely useless.Everything is a banana.

Everything is a banana.Everything is a cat.Everything is a car.Yeah.And so all we need to do is basically come up

with ways to prevent collapse.Contrastive learning is one way of doing it.And then for example, like clustering or self-distillationor other ways of doing it.We also had a recent paper where we used like de-correlation

between like two sets of features to prevent collapse.So that's inspired a little bitby like Horace Barlow's neuroscience principles.By the way, I should comment that whoever countsthe number of times the word banana, apple, cat and dog

we're using this conversation wins the internet.I wish you luck.What is Suave and the main improvement proposed in the paper on supervised learning of visual features by contrasting cluster assignments?So basically is a clustering based technique, which is for again, the same thing for selfsupervised learning in vision, where we have two crops.

And the idea basically is that you want the features from these two crops of an imageto lie in the same cluster.And basically, crops that are coming from different images to be in different clusters.Now, typically in a sort of if you were to do this clustering, you would perform clusteringoffline.

What that means is you would, if you have a data set of n examples, you would run overall of these n examples, get features for them, perform clustering, so basically getsome clusters, and then repeat the process again.So this is offline basically because I need to do one pass through the data to computeits clusters.

Swav is basically just a simple way of doing this online.So as you're going through the data, you're actually computing these clusters online.And so of course, there is like a lot of tricks involved in how to do this in a robust mannerwithout collapsing. But this is the sort of key idea to it. Is there a nice way to say what isthe key methodology of the clustering that enables that? Right. So the idea basically is that when

you have n samples, we assume that we have access to like, there are always k clusters in a data set,k is a fixed number. So for example, k is 3000. And so if you have any, and when you look at anysort of small number of examples, all of them must belong to one of these k clusters. And we imposethis equi partition constraint. What this means is that basically your entire set ofn samples should be equally partitioned into k clusters. So all your k clusters are basically

equal, they have equal contribution to these n samples. And this ensures that we nevercollapse. So collapse can be viewed as a way in which all samples belong to one cluster.So all this, if all features become the same, then you have basically just one mega cluster.We don't even have like 10 clusters or 3000 clusters.So Swav basically ensures that at each point,

all these 3000 clusters are being usedin the clustering process.And that's it.Basically just figure out how to do this online.And again, basically just make sure that two crops

from the same image belong to the same clusterand others don't.And the fact they have a fixed K makes things simpler.Fixed K makes things simpler.Our clustering is not like really hard clustering,

it's soft clustering.So basically you can be 0.2 to cluster number oneand 0.8 to cluster number two.So it's not really hard.So essentially, even though we have like 3000 clusters,

we can actually represent a lot of clusters.What is SEER, S-E-E-R?And what are the key results and insights in the paper,self-supervised pre-training of visual features in the wild?What is this big, beautiful SEER system?

SEER, so I'll first go to SWAVbecause suave is actually one of the key components for SERE.So when we use suave, it was demonstrated on ImageNet.So typically, self-supervised methods,the way we sort of operate is,

in the research community, we kind of cheat.So we take ImageNet,which, of course, I talked about as having lots of labels,and then we throw away the labels,throw away all the hard work that went behind,

basically, the labeling process,and we pretend that it is unsupervised.But the problem here is that we have,when we collected these images, the ImageNet dataset has a particular distribution of concepts.So these images are very curated. And what that means is these images, of course, belong to a

certain set of noun concepts. And also ImageNet has this bias that all images contain an object,which is very big and it's typically in the center. So when you're talking about a dog,it's a well-framed dog, it's towards the center of the image. So a lot of the data augmentation,a lot of the sort of hidden assumptions in self-supervised learning actually reallyexploit this bias of ImageNet. And so, I mean, a lot of my work, a lot of work from other people,

always uses ImageNet sort of as the benchmark to show the success of self-supervised learning.So you're implying that there's particular limitations to this kind of dataset?Yes. I mean, it's basically because our data augmentations that we designed,like all data augmentations that we designed for self-supervised learning in Vision,are kind of overfed to ImageNet.

But you're saying a little bit hard-coded in the cropping.Exactly. The cropping parameters, the kind of lighting that we're using,the kind of blurring that we're using.Yeah, but you would, for a more in-the-wild dataset, you would need to beclever or more careful in setting the range of parameters and those kinds of things.

So for Sear, our main goal was twofold. One, basically to move away from ImageNet fortraining. So the images that we used were uncurated images. Now there's a lot of debatewhether they're actually curated or not, but I'll talk about that later. But the idea was basically,these are going to be random internet images that we are not going to filter out based onparticular categories. So we did not say that, oh, images that belong to dogs and cats should

be the only images that come in this dataset. Banana. And basically other images should bethrown out. So we didn't do any of that. So these are random internet images. And of course,it also goes back to the problem of scale that you talked about. So these were basically aabout a billion or so images.And for context ImageNet,

the ImageNet version that we usedwas one million images earlier.So this is basically goinglike three orders of magnitude more.The idea was basically to see

if we can train a very large convolutional modelin a self-supervised wayon this uncurated,but really large set of images.And how well would this model do?

So is self-supervised learningreally overfit to ImageNet?Or can it actually work in the wild?And it was also out of curiosity,what kind of things will this model learn?

Will it actually be able to still figure out, you know, different types of objects and so on?Would there be particular kinds of tasks it would actually do better than an ImageNet trained model?And so for CIR, one of our main findings was that we can actually train very large modelsin a completely self-supervised way on lots of Internet images without really necessarily filtering them out,which was in itself a good thing because it's a fairly simple process, right?

So you get images which are uploaded and you basically can immediately use them to train a model in an unsupervised way.You don't really need to sit and filter them out.These images can be cartoons,these can be memes, these can beactual pictures uploaded by people,

and you don't really care about what these images are.You don't even care about what concepts they contain.So this was a very simple setup.What image selection mechanism would you say isthere inherent in some aspect of the process?

So you're implying that there's almost none,but what is there would you say if you were to introspect?Right. So it's not like uncurated can basically like one way of imagininguncurated is basically you have like cameras, cameras that can take pictures at randomviewpoints. When people upload pictures to the internet, they are typically going to care about

the framing of it. They're not going to upload, say, the picture of a zoomed in wall, for example.When we say internet, do you mean social networks?Yes.Okay.So these are not going to be like pictures of like a zoomed in table or a zoomed in wall.

So it's not really completely uncurated because people do have the like photographer's bias,where they do want to keep things towards the center a little bit, or like really have like,you know, nice looking things and so on in the picture. So that's the kind of bias thattypically exists in this dataset. And also the user base, right? You're not going to get lotsof pictures from different parts of the world because there are certain parts of the world

where people may not actually be uploading a lot of pictures to the internet or may not even haveaccess to a lot of internet. So this is a giant dataset and a giant neural network.I don't think we've talked about what architectures work well for SSL, for self-supervised learning.For Seer and for Swap, we were using convolutional networks.But recently in a work called Dyno, we've basically started using transformers for vision.

Both seem to work really well, Connets and transformers.And depending on what you want to do, you might choose to use a particular formulation.So for Seer, it was a ConvNet.It was particularly a RegNet model, which was also work from Facebook.RegNets are really good when it comes to compute versus accuracy.

So because it was a very efficient model, compute and memory wise efficient,and basically it worked really well in terms of scaling.So we used a very large RegNet model and trained it on the built-in images.Can you maybe quickly comment on what RegNets are?It comes from this paper, Designing Network Design Spaces.

It's just a super interesting concept that emphasizes on how to create efficient neural networks,Large neural networks.So one of the sort of key takeaways from this paper,which the authors, like whenever you hear them present this work,they keep saying is a lot of neural networks are characterized in terms of flops, right?

Flops basically being the floating point operations.And people really love to use flops to say this model is like really computationally heavyor like our model is computationally cheap and so on.Now it turns out that flops are really not a good indicator of how well a particular network is,like how efficient it is really.

And what a better indicator is the activation or the memory that is being used by this particularmodel.And so designing like one of the key findings from this paper was basically that you needto design network families or neural network architectures that are actually very efficientin the memory space as well, not just in terms of pure flops.

So RegNet is basically a network architecture family that came out of this paper that isparticularly good at both flops and the sort of memory required for it.And of course it builds upon like earlier work, like ResNet being like the sort of morepopular inspiration for it, where you have residual connections.But one of the things in this work is basically they also use like squeeze excitation blocks.

So it's a lot of nice sort of technical innovation in all of this from prior work and a lot ofthe ingenuity of these particular authors in how to combine these multiple buildingblocks.But the key constraint was optimized for both flops and memory when you're basically doingthis.

Don't just look at flops.you to what have a sort of have very large networks through this process uh can optimize for low likefor efficiency right low memory also in just in terms of pure hardware they fit very well on gpumemory yeah so they can be like really powerful neural network architectures with lots of parameterslots of flops but also because they're like efficient in terms of the amount of memory that

they're using you can actually fit a lot of these on like you can fit a very large model on a singleGPU, for example. Would you say that the choice of architecture matters more than the choice ofmaybe data augmentation techniques? Is there a possibility to say what matters more? You kind ofimplied that you can probably go really far with just using basic convnets. All right. I thinkdata and data augmentation, the algorithm being used for the self-supervised training matters a

lot more than the particular kind of architecture. With different types of architecture, you'll getdifferent properties in the resulting sort of representation. But really, I mean, the secretsource is in the data augmentation and the algorithm being used to train them. The architectures,I mean, at this point, a lot of them perform very similarly, depending on the particulartask that you care about. They have certain advantages and disadvantages.

Is there something interesting to be said about what it takes with Sears to train a giant neuralnetwork? You're talking about a huge amount of data, a huge neural network. Is there somethinginteresting to be said of how to effectively train something like that fast? Lots of GPUs.Okay. I mean, so the model was like a billion parameters and it was trained on a billionimages. So basically the same number of parameters as the number of images. And it took a while.

I don't remember the exact number. It's in the paper, but it took a while.I guess I'm trying to get at is when you're thinking of scaling this kind of thing.I mean, one of the exciting possibilities of self-supervised learning is the several orders of magnitude scaling of everything, both the neural network and the size of the data.And so the question is, do you think there are some interesting tricks to do large-scale distributed compute?Or is that really outside of even deep learning?

That's more about like hardware engineering.I think more and more there is like this,a lot of like systems are designedbasically taking into accountthe machine learning needs, right?

So because whenever you're doingthis kind of distributed training,there is a lot of intercommunication between nodes.So like gradients or the model parameters are being passed.So you really want to minimize communication costs

when you really want to scale these models up.You want basically to be able to do as much, like as limited amount of communication as possible.So currently like a dominant paradigm is synchronized sort of training.So essentially after every sort of gradient step, all you basically have like a synchronization step between all the sort of compute chips that you're going on with.I think asynchronous training was popular, but it doesn't seem to perform as well.

but in generalI think that's sort of theI guess it'soutside my scope as wellbut

basically the main thing islikeminimize the amount ofsynchronization stepsthat you have

that has beenthe key takeawayat least in my experiencethe others I have no idea abouthow to design the chip

yeah there's very fewthings thatI seeJim Keller's eyeslight up as much

as talking aboutgiant computers doinglike that fast communicationthat you're talking towell when they're

training machine learning systems. What is VISL? V-I-S-S-L. The PyTorch-basedSSL library. What are the use cases that it might have?VISL basically was born out of a lot of us at Facebook doing the self-supervised learningresearch. So it's a common framework in which we have a lot of self-supervised learning methodsimplemented for vision. It's also, it has in itself like a benchmark of tasks that you can

evaluate the self-supervised representations on.So the use case for it is basically for anyone who's either trying toevaluate their self-supervised model or train their self-supervised model,or a researcher who's trying to build a new self-supervised technique.So it's basically supposed to be all of these things.

So as a researcher before Whistle, for example, or like when we started doingthis work fairly seriously at Facebook, it was very hard for us to go and implementevery self-supervised learning model, test it out in a like sort of consistent manner.The experimental setup was very different across different groups.Even when someone said that they were reporting ImageNet accuracy, it could mean lots of different things.

So with Vistle, we tried to really sort of standardize that as much as possible.And there was a paper like we did in 2019 just about benchmarking.And so Vistle basically builds upon a lot of this kind of work that we did about like benchmarking.And then every time we try to like, we come up with a self-supervised learning method, a lot of us try to push that into Vistle as well.just so that it basically is like the central piece

where a lot of these methods can reside.Just out of curiosity, people may be,so certainly outside of Facebook, but just researchersor just even people that know how to program in Pythonand know how to use PyTorch,

what would be the use case?What would be a fun thing to play around with Vessel on?Like what's a fun thing to play aroundwith self-supervised learning on, would you say?Is there a good hello world program?

Is it always about big size that's important to have,or is there fun little smaller case playgroundsto play around with?So we're trying to push something towards that.I think there are a few setups out there,

but nothing super standard on the smaller scale.I mean, ImageNet in itself is actually pretty big also,so that is not something which is feasiblefor a lot of people.But we are trying to push up with smaller use cases.

The thing is, at a smaller scale,a lot of the observations or a lot of the algorithms that work don't necessarily translateinto the medium or the larger scale. So it's really tricky to come up with a good smallscale setup where a lot of your empirical observations will really translate to theother setup. So it's been really challenging. I've been trying to do that for a little bit

as well, because it does take time to train stuff on ImageNet. It does take time to trainon more images. But pretty much every time I've tried to do that, it's been unsuccessfulbecause all the observations I draw from my set of experiments on a smaller dataset don'ttranslate into ImageNet or don't translate into another sort of data set. So it's been hard for usto figure this one out, but it's an important problem. So there's this really interesting idea

of learning across multiple modalities. You have a CVPR 2021 best paper candidatetitled Audiovisual Instance Discrimination with Cross-Modal Agreement. What are the key results,insights in this paper, and what can you say in general about the promise and power of multimodallearning? For this paper, it actually came as a little bit of a shock to me at how well it worked.So I can describe what the problem setup was. So it's been used in the past by lots of folks,

like for example, Andrew Owens from MIT, Aljosha Efros from Berkeley, and Rosa Sermon from Oxford.So a lot of these people have been sort of showing results in this. Of course, I was aware of thisresult, but I wasn't really sure how well it would work in practice for like other sort of downstreamtasks. So the results kept getting better. And I wasn't sure if like a lot of our insights fromself-supervised learning would translate into this multimodal learning problem.

So multimodal learning is when you have multiple modalities.Okay, so the particular modalities that we worked on in this work were audio and video.So the idea was basically if you have a video, you have its corresponding audio track.And you want to use both of these signals, the audio signal and the video signal to learna good representation for video and good representation for audio.

Like this podcast.Like this podcast, exactly.So what we did in this work was basically train two different neural networks,one on the video signal, one on the audio signal.And what we wanted is basically the features that we get

from both of these neural networks should be similar.So it should basically be able to produce the same kinds of featuresfrom the video and the same kinds of features from the audio.Now, why is this useful?Well, for a lot of these objects that we have,

there is a characteristic sound, right?So trains, when they go by, they make a particular kind of sound.Boats make a particular kind of sound.And people, when they're jumping around,will like shout, whatever.

Bananas don't make a sound.So you can't learn anything about bananas there.Or when humans mention bananas.Well, yes.When they say the word banana, then probably-

So you can't trust basically anythingthat comes out of a human's mouthas that source of audio is useless.So the typical use case is basically like,for example, someone playing a musical instrument.

So guitars have a particular kind of sound and so on.So because a lot of these things are correlated,the idea in multimodal learningis to take these two kinds of modalities,video and audio, and learn a common embedding space,

a common feature space where both of these related modalitiescan basically be close together.And again, you use contrastive learning for this.So in contrastive learning, basically the videoand the corresponding audio are positives,

and you can take any other video or any other audio,and that becomes a negative.And so basically that's it.It's just a simple application of contrastive learning.The main sort of finding from this work for us

was basically that you can actually learnvery, very powerful feature representations, very, very powerful video representations.So you can learn the sort of video network that we ended up learning can actually be used fordownstream, for example, recognizing human actions or recognizing different types of sounds,for example. So this was sort of the key finding. Can you give kind of an example of a human action

or like just so we can build up intuition of what kind of thing? Right. So there is this data setcalled kinetics, for example, which has like 400 different types of human actions.So people jumping, people doing different kinds of sports or different types of swimming.So like different strokes and swimming, golf and so on.So there are just different types of actions right there.

And the point is this kind of video network that you learn in a self-supervised way canbe used very easily to kind of recognize these different types of actions.It can also be used for recognizing different types of objects.what we did is we tried to visualize whether the network can figure out where the sound is comingfrom. So basically give it a video and basically play of say of a person just strumming a guitar,

but of course there is no audio in this. And now you give it this sound of a guitar and you ask,like basically try to visualize where the network is, where the network thinks the sound is comingfrom. And then it can kind of basically draw, like when you visualize it, you can see thatit's basically focusing on the guitar. And the same thing, for example, for certain people'svoices, like famous celebrities' voices.

It can actually figure out where their, like, where their mouth is.So it can actually distinguish different people's voices, forexample, a little bit as well.Without that ever being annotated in any way.Right.

So this is all what it had discovered.We never, like, we never pointed out that this is a guitar and thisis the kind of sound it produces.It can actually naturally figure that out because it's seen so manycorrelations of this sound coming with this kind of like, uh, an object

that it basically learns to associate this sound with this kind of an object.Yeah.That's really fascinating, right?That's really interesting.And so the idea with this kind of network

is then you then fine-tune it for a particular task.So this is forming like a really good knowledge basewithin a neural networkbased on which you could then train a little bit moreto accomplish a specific task well.

Exactly.So you don't need a lot of videos of humansdoing actions annotated.You can just use a few of them to basically get your recognition.How much insight do you draw from the fact

that he can figure out where the sound is coming from.I'm trying to see, so that's kind of very,it's very CVPR beautiful, right?It's a cool little insight.I wonder how profound that is.

Does it speak to the idea that multiple modalitiesare somehow much bigger than the sum of their parts?Or is it really, really useful to have multiple modalities?or is it just a cool thing that there's parts of our world that can be revealedeffectively through multiple modalities,

but most of it is really all about vision or about one of the modalities?I would say a little tending more towards the second part.So most of it can be sort of figured out with one modality,but having an extra modality always helps you.Yeah. So in this case, for example, like one, uh, thing is when you're, if you observe someone

cutting something and you don't have any sort of sound there, whether it's an apple or whetherit's an onion, it's very hard to figure that out. But if you hear someone cutting it, it's veryeasy to figure it out because apples and onions make a very different turn of, uh, different kindof characteristics on when they're cut. Yeah. So you really figure this out based on audio.It's much easier. So your life will become much easier when you have access to different kinds

of modalities and the other thing is so i like to relate it in this way it may be like completelywrong but uh the distributional hypothesis in nlp right where context basically gives kind ofmeaning to that word sound kind of does that too right so if you have the same sound so that's thesame context across different videos you're very likely to be observing the same kind of conceptyeah so that's the kind of reason why it figures out the guitar thing right it observes the same

sound across multiple different videos and it figures out maybe this is the common factorthat's actually doing it i wonder i used to have this argument with my dad a bunchfor creating general intelligence whether uh smell is an important uh like if if that'simportant sensory information mostly we're talking about like falling in love with anai system and for for him smell and touch are important and i was arguing that it's not at all

It's nice and everything, but you can fall in love with just language, really.But voice is very powerful, and vision is next, and smell is not that important.Can I ask you about this process of active learning?You mentioned interactivity.Right.

Is there some value within the self-supervised learning context to select parts of the data in intelligent ways such that they would most benefit the learning process?So I think so.I think, I mean, I know I'm talking to an active learning fan here, so of course I know the answer.First you were talking bananas and now you're talking about active learning.I love it.

I think Yann LeCun told me that active learning is not that interesting.And I think back then I didn't want to argue with him too much.But when we talk again, we're going to spend three hours arguing about active learning.My sense was you can go extremely far with active learning, perhaps farther than anything else.To me, there's this kind of intuition that, similar to data augmentation, you can get a lot from the data, from intelligent, optimized usage of the data.

Right.I'm trying to speak generally in such a way that includes data augmentation and active learning, that there's something about maybe interactive exploration of the data that at least is part of the solution to intelligence, like an important part.I don't know what your thoughts are on active learning in general.I actually really like active learning.So back in the day, we did this largely ignored CVPR paper called Learning by Asking Questions.

So the idea was basically you would train an agent that would ask a question about the image.it would get an answer.And basically then it would update itself.It would see the next image.It would decide what's the next hardest question

that I can ask to learn the most.And the idea was basically because it was being smartabout the kinds of questions it was asking,it would learn in fewer samples.It would be more efficient at using data.

And we did find to some extent that it was actually betterthan randomly asking questions.Kind of weird thing about active learning isit's also a chicken and egg problembecause when you look at an image,

to ask a good question about the image,need to understand something about the image, right?You can't ask a completely arbitrarily random question.It may not even apply to that particular image.So there is some amount of understanding or knowledge that basically keeps getting

built when you're doing active learning.Uh, so I think active learning in by itself is really good.And the main thing we need to figure out is basically how do we come up with atechnique to first model what the model knows and also model what the model doesnot know.

I think that's the sort of beauty of it, right?Because when you know that there are certain things that you don't know anything about,asking a question about those concepts is actually going to bring you the most value.And I think that's the sort of key challenge.Now, self-supervised learning by itself, like selecting data for it and so on, that's actually

really useful.But I think that's a very narrow view of looking at active learning, right?If you look at it more broadly, it is basically about if the model has a knowledge about Nconcepts and it is weak basically about certain things.So it needs to ask questions either to discover new concepts or to basically like increase

its knowledge about these end concepts.So at that level, it's a very powerful technique.I actually do think it's going to be really useful.Even in like simple things such as like data labeling, it's super useful.So here is like one simple way that you can use active learning.

For example, you have your self-supervised model, which is very good at predicting similaritiesand dissimilarities between things.And so if you label a picture as basically say a banana,now you know that all the images that are very similar to this imageare also likely to contain bananas.

So probably when you want to understand what else is a banana,you're not going to use these other images.You're actually going to use an image that is not completely dissimilar,but somewhere in between, which is not super similar to this image,but not super dissimilar either.

And that's going to tell you a lot more about what this concept of a banana is.So that's kind of a heuristic.I wonder if it's possible to also learn ways to discover the most likely, the most beneficial image.So not just looking at a thing that's somewhat similar to a banana, but not exactly similar,but have some kind of more complicated learning system, like learned discovery mechanism that tells you what image to look for.

like how exactly i yeah like actually in a self-supervised way learning strictly a functionthat says is this image going to be very useful to me given what i currently know i think thereis a lot of synergy there um it's just i think yeah it's going to be explored i think very muchrelated to that i kind of think of what tesla autopilot is doing at currently as kind of activelearning there's something that andre kapati and their team are calling a data engine yes so you're

basically deploying a bunch of instantiations of a neural network into the wild and they'recollecting a bunch of edge cases that are then sent back for annotation for particular in edgecases as defined as near failure or some weirdness on a particular task that's then sent back it'sthat not exactly a banana, but almost a banana cases,send back for annotation.

And then there's this loop that keeps goingand you keep retraining and retraining.And the active learning step there,or whatever you want to call it,is the cars themselves that are sending you back the data,

like what the hell happened here?This was weird.What are your thoughts about that sort of deploymentof neural networks in the wild?Another way to ask a question,

First is your thoughts and maybe if you want to comment,is there applications for autonomous driving,like computer vision-based autonomous driving,applications of self-supervised learningin the context of computer vision-based autonomous driving?

So I think so.I think for self-supervised learning to be usedin autonomous driving, there are lots of opportunities.I mean, just like pure consistency in predictionsis one way, right?

So because you have this nice sequenceof data that is coming in, a video stream of it, associated, of course, with the actionsthat, say, the car took, you can form a very nice predictive model of what's happening.So, for example, like all the way, like one way possibly in which how they're figuringout what data to get labeled is basically through prediction uncertainty, right?

So you predict that the car was going to turn right.So this was the action that was going to happen, say, in the shadow mode.And now the driver turned left.And this is a really big surprise.So basically by forming these good predictive models, you are, I mean, these are kind of self-supervised models, right?

Prediction models are basically being trained just by looking at what's going to happen next and asking them to predict what's going to happen next.So I would say this is really like one use of self-supervised learning.It's a predictive model and you're learning a predictive model basically just by looking at what data you have.Is there something about that active learning context that you find insights from?like that kind of deployment of the system,

seeing cases where it doesn't perform as you expectedand then retraining the system based on that?I think that, I mean, that really resonates with me.It's super smart to do it that way.Because I mean, the thing is with any kind of like practical system

like autonomous driving,there are those edge cases that are the thingsthat are actually the problem, right?I mean, highway driving or like freeway drivinghas basically been like,

there has been a lot of success in that particular partautonomous driving for a long time. I would say like since the 80s or something. Now, the pointis all these failure cases are the sort of reason why autonomous driving hasn't become like super,super mainstream and available like in every possible car right now. And so basically byreally scaling this problem out by really trying to get all of these edge cases out as quickly as

possible, and then just like using those to improve your model, that's super smart. Andprediction uncertainty to do that is like one really nice way of doing it.Let me put you on the spot. So we mentioned offline Jitendra Malik. He thinks that the Tesla computer vision approach or really any approach for autonomous driving is very far away. How many years away, if you have to bet all your money on it, are we solving autonomous driving with this kind of computer vision only machine learning based approach?Okay, so what does solving autonomous driving mean? Does it mean solving it in the US? Does it mean solving it in India? Because I can tell you that very different types of driving happening.No, not India, not Russia.

In the United States, autonomous,so what solving means is when the car says it has control,it is fully liable.You can go to sleep, it's driving by itself.So this is highway and city driving,

but not everywhere, but mostly everywhere.And it's, let's say, significantly better.Let's say five times less accidents than humans.sufficiently safer such that the public feels like that transition is enticing, beneficial,both for our safety and financially and all those kinds of things.

Okay. So first disclaimer, I'm not an expert in autonomous driving. So let me put it out there.I would say at least five to 10 years. This would be my guess from now.I'm actually very impressed. When I sat in a friend's Tesla recently and of course,like looking so it can on the screen, it basically shows all the detections and everything thecar is doing as you're driving by.

And that's super distracting for me as a person, because all I keep looking at is like thebounding boxes and the cars it's tracking.And it's really impressive, like, especially when it's raining and it's able to do that.That was the most impressive part for me.It's actually able to get through rain and do that.

And one of the reasons why like a lot of us believed and I would put myself in that categoryis Lidar based sort of technology for autonomous driving was the key driver.Right.So Waymo was using it for the longest time.And Tesla then decided to go this completely other route that, oh,

we are not going to even use Lidar.So their initial system, I think, was camera and radar based.And now they're actually moving to a completely like vision based system.And so that was just like it sounded completely crazy.Like Lidar is very useful in cases where you have low visibility.

Of course, it comes with its own set of complications.But now to see that happen in like on a live Tesla, that basically just proves everyone wrong, I would say in a way.And that's just working really well.I think there were also like a lot of advancements in camera technology.Now there were like, I know at CMU when I was there, there was a particular kind of camera that had been developed that was really good at basically low visibility settings.

So like lots of snow and lots of rain, it could actually still have a very reasonable visibility.And I think there are lots of these kinds of innovations that will happen on the sensorside itself, which is actually going to make this very easy in the future.And so maybe that's actually why I'm more optimistic about vision-based self-superviseddriving.

But vision-based autonomous driving, that's the reason I'm quite optimistic about it,because I think there are going to be lots of these advances on the sensor side itself.So acquiring this data, we're actually going to get much better about it.And then of course, once we're able to scale out and get all of these edge cases in asas like Andre described,

I think that's going to make us go very far away.Yeah, so it's funny.I'm very much with you on the five to 10 years,maybe 10 years,but you made it,

I'm not sure how you made it sound,but for some people that might seem like really far awayand then for other people,it might seem like very close.There's a lot of fundamental questions

about how much game theory is in this whole thing.So like how much is this simply a collision avoidance problem?And how much of it is you're still interactingwith other humans in the sceneand you're trying to create an experience that's compelling

so you want to get from point A to point B quickly.You want to navigate the scene in a safe way,but you also want to show some level of aggressionbecause, well, certainly this is why you're screwed in Indiabecause you have to show aggression.

Jersey or New Jersey.So like, or New York or basically any major city.But I think it's probably Elon that I talked the most about this,which is surprised the level of which they're not considering human beingsas a huge problem in this, as a source of problem.

Like the driving is fundamentally a robot on robot versus the environment problemversus like, you know, you can just consider humans not part of the problem.I used to think humans are almost certainly have to be modeled really well.Pedestrians and cyclists and humans inside other cars,you have to have like mental models for them.

You cannot just see it as objects.But more and more, it's like the,it's the same kind of intuition breaking thing that self-supervised learning does,which is, well, maybe through the learning,you'll get all the human information you need, right?

Like maybe you'll get it just with enough data.You don't need to have explicit good modelsof human behavior.Maybe you get it through the data.So, I mean, my skepticism also

just knowing a lot of automotive companiesand how difficult it is to be innovative,I was skeptical that they would be able at scaleto convert the driving scene across the worldinto digital form such that you can create this data engine at scale.

And the fact that Tesla is at least getting there or are already there makes me thinkthat it's now starting to be coupled to this self-supervised learning vision, which islike, if that's going to work, if through purely this process you can get really far,then maybe you can solve driving that way.I don't know.

I tend to believe we don't give enough credit to how amazing humans are both at driving and at supervising autonomous systems.And also, I wish there was much more driver sensing inside Teslas and much deeper consideration of human factors,like understanding psychology and drowsiness and all those kinds of things when the car does moreand more of the work how to uh keep utilizing the little human supervision that i needed tokeep this whole thing safe i mean it's a fascinating dance of human robot interaction

to me autonomous driving for a long time is a human robot interaction pro problem it is nota robotics problem or computer vision problem like you have to have a human in the loop butSo, which is why I think it's 10 years plus,but I do think there'll be a bunch of citiesand contexts where, you know, geo-restricted,

it will work really, really damn well.Yeah.So I think for me, like it's five,if I'm being optimisticand it's going to be five for a lot of cases

and 10 plus, yeah, I agree with you.10 plus basically,if we want to like cover most of the,say contiguous United States or something.Oh, interesting.

So my optimistic is five and pessimistic is 30.30.I have a long tail on this one.I've watched enough driving videos.I've watched enough pedestrians to think like we may be,

like there's a small part of me still, not a small,like a pretty big part of me that thinks we will haveto build AGI to solve driving.Oh, wow.Like there's something to me,

like because humans are part of the picture,deeply part of the picture,and also human society is part of the picturein that human life is at stake.Anytime a robot kills a human,

it's not clear to me that that's not a problemthat machine learning will also have to solve.Like it has to,you have to integrate that into the whole thing,just like Facebook or social networks.

You know, one thing is to sayhow to make a really good recommender system.And then the other thing is to integrateinto that recommender system,all the journalists that will write articles

about that recommender system.Like you have to consider the societywithin which the AI system operates.And in order to, and like politicians too,you know, this is, there's regulatory stuff

for autonomous driving.It's kind of fascinating that the more successfulyour AI system becomes,the more it gets integrated in societyand the more precious politicians and the public

and the clickbait journalistsand all the different fascinating forces of our societystart acting on it.And then it's no longer how good you aredoing the initial task.

It's also how good you are at navigating human nature,which is a fascinating space.What do you think are the limits of deep learning?If you allow me, we'll zoom out a little bitinto the big question of artificial intelligence.

You said dark matter of intelligenceis self-supervised learning, but there could be more.What do you think the limits of self-supervised learningand just learning in general, deep learning are?I think for deep learning in particular,

because self-supervising is, I would say, a little bit more vague right now. For something that's sovague, it's hard to predict what its limits are going to be. But like I said, I think anywhereyou want to interact with humans, self-supervising kind of hits a boundary very quickly because youneed to have an interface to be able to communicate with the human. So really, if you have justvacuous concepts or just nebulous concepts discovered by a network, it's very hard to

communicate those with a human without inserting some kind of human knowledge or some kind of humanbias there. In general, I think for deep learning, the biggest challenge is just data efficiency.Even with self-supervised learning, even with anything else, if you just seea single concept once, one image of a, I don't know, whatever you want to call it, any concept,it's really hard for these methods to generalize by looking at just one or two samples of things.

And that has been a real, real challenge.And I think that's actually why like these edge cases, for example, forTesla are actually that important.Because if you see just one instance of the car failing, and if you justannotate that and you get that into your dataset, it's, you have like very

limited guarantee that it's not going to happen again, and you're actuallygoing to be able to recognize this kind of instance in a very different scenario.So like when it was snowing, so you got that thing labeled when it was snowing,but now when it's raining, you're actually not able to get it, or youbasically have the same scenario in a different part of the world.

the lighting was different or so on.So it's just really hard for these models,like deep learning especially, to do that.What's your intuition?How do we solve handwritten digit recognition problem

when we only have one example for each number?It feels like humans are using something like learning.Right.I think we are good at transferring knowledge a little bit.We are just better at, like,

for a lot of these problemswhere we are generalizing from a single sample,recognizing from a single sample,We are using a lot of our own domain knowledge and a lot of our inductive bias into thatone sample to generalize it.

So I've never seen you write the number nine, for example.And if you were to write it, I would still get it.And if you were to write a different kind of alphabet and write it in two differentways, I would still probably be able to figure out that these are the same two characters.It's just that I have been very used to seeing handwritten digits in my life.

The other sort of problem with any deep learning system or any kind of machine learning systemis like it's guarantees, right?There are no guarantees for it.Now you can argue that humans also don't have any guarantees.There is no guarantee that I can recognize a cat in every scenario.

I'm sure there are going to be lots of cats that I don't recognize, lots of scenariosin which I don't recognize cats in general.But I think from just a sort of application perspective, you do need guarantees, right?We call these things algorithms.Now algorithms, like traditional CS algorithms have guarantees.

Sorting is a guarantee.If you were to call sort on a particular array of numbers, you are guaranteed that it's goingto be sorted.Otherwise, it's a bug.Now, for machine learning, it's very hard to characterize this.

We know for a fact that a cat recognition model is not going to recognize every catin the world in every circumstance.I think most people would agree with that statement.But we are still okay with it.We still don't call this as a bug.

Whereas in traditional computer science or traditional science, if you have this kindof failure case existing, then you think of it as like something is wrong.I think there is this sort of notion of nebulous correctness for machine learning.And that's something we just need to be very comfortable with.And for deep learning or like for a lot of these machine learning algorithms, it's

not clear how do we characterize this notion of correctness?I think limitation in our understanding, or at least a limitation in our phrasingof this, and if we were to come up with better ways to understand this limitation,then it would actually help us a lot.do you think there's a distinction between the concept of learning and the concept of reasoning

do you think it's possible for neural networks to reason so i think of it slightly differently sofor me a learning is whenever i can like make a snap judgment so if you show me a picture of adog i can immediately say it's a dog but if you give me like a puzzle you know like uh whatevera goldsberg machine of like this thing's going to happen then i have to reason because i've neverit's a very complicated setup. I've never seen that particular setup and I really need to

draw and imagine in my head what's going to happen to figure it out.So I think, yes, neural networks are really good at recognition, but they're not very good atreasoning. Because if they have seen something before or seen something similar before, they'revery good at making those sort of snap judgments. But if you were to give them a very complicatedthing that they've not seen before, they have very limited ability right now to compose

different things like oh i've seen this particular part before i've seen this particular part beforeand now probably like this is how they're going to work in tandem it's very hard for them to comeup with these kinds of things well there's a certain aspect to um reasoning that you canmaybe convert into the process of programming and so there's the whole field of program synthesisand people have been applying machine learning to the problem of program synthesis and the question

is, you know, can they, the step of composition, why can't that be learned? You know, this,this step of like building things on top of it, like little intuitions, concepts on topof each other. Can that be learnable? What's your intuition there? Or like, I guess similarset of techniques, do you think that would be applicable?So I think it is of course, it is learnable because like we are prime examples of machines

that have like, or individuals that have learned this, right? Like humans have learned this.So it is, of course, it is a technique that is very easy to learn.I think where we are kind of hitting a wall basically with like current machine learningis the fact that when the network learns all of this information, we basically are not ableto figure out how well it's going to generalize to an unseen thing. And we have no like a priori,

no way of characterizing that.And I think that's basicallytelling us a lot aboutthe fact that we really don't knowwhat this model has learned

and how well it's basically,because we don't knowhow well it's going to transfer.There's also a sense in whichit feels like we humans

may not be aware of how muchlike background,how good our background model is,how much knowledge we just haveslowly building on top of each other.

It feels like neural networks are constantly throwing stuff out.Like you'll do some incredible thing where you're learning a particular task in computer vision.You celebrate your state-of-the-art successes and you throw that out.Like it feels like you're never using stuff you've learned for your future successes in other domains.And humans are obviously doing that exceptionally well.

Still throwing stuff away in their mind, but keeping certain kernels of truth.Right. So I think we're like continual learning is sort of the paradigm for this in machine learning. And I don't think it's a very well explored paradigm. We have like things in deep learning, for example, catastrophic forgetting is like one of the standard things. The thing basically being that if you teach a network like to recognize dogs, and now you teach that same network to recognize cats, it basically forgets how to recognize dogs. So it forgets very quickly.I mean, and whereas a human, if you were to teach someone to recognize dogs and then to recognize cats, they don't forget immediately how to recognize these dogs.I think that's basically sort of what you're trying to get.Yeah, I just, I wonder if like the long-term memory mechanisms or the mechanisms that store not just memories, but concepts that allow you to reason and compose concepts.

if those things will look very different than neural networks,or if you can do that within a single neural networkwith some particular sort of architecture quirks.That seems to be a really open problem.And of course, I go up and down on that

because there's something so compelling to the symbolic AIor to the ideas of logic-based sort of expert systems.You have like human interpretable factsthat built on top of each other.It's really annoying with self-supervised learning that the AI is not very explainable.

You can't understand all the beautiful things it has learned.You can't ask it questions.But then again, maybe that's a stupid thing for us humans to want.I think whenever we try to understand it, we're putting our own subjective human bias into it.And I think that's the sort of problem.

And with self-supervised learning,the goal is that it should learn naturally from the data.So now if you try to understand it,you are using your own preconceived notionsof what this model has learned.

I think that's the problem.High-level question.What do you think it takes to build a systemwith superhuman, maybe let's say human-levelor superhuman-level general intelligence?

We've already kind of started talking about this,but what's your intuition?Like, does this thing have to have a body?Does it have to interact richly with the world?Does it have to have some more human elements

like self-awareness?I think emotion.I think emotion is something which is,like it's not really attributed typicallyin standard machine learning.

It's not something we think about.Like there is NLP, there is vision,there is no like emotion.Emotion is never a part of all of this.And that just seems a little bit weird to me.

I think the reason basically being thatThere is surprise and like, basically emotion is like one of the reasons emotionsarise is like what happens and what you expect to happen, right?There is like a mismatch between these things.And so that gives rise, like I can either be surprised or I can be saddened or I can

be happy and all of this.And so this basically indicates that I already have a predictive model in myhead and something that I predicted or something that I thought was likely tohappen, and then there was something that I observed that happened, there was adisconnect between these two things.

And that basically is like maybe one of the reasons I like you have a lot of emotions.Yeah, I think so.I talk to people a lot about them, like Lisa Feldman Barrett.I think that's an interesting concept of emotion.But I have a sense that emotion primarily in the way we think about it, which is the display of emotion, is a communication mechanism between humans.

So it's a part of basically human to human interaction.um an important part but just the part so it's like it i would throw it into the um into thefull mix of communication and to me communication can be done with objects that don't look at alllike humans okay i've seen our ability to anthropomorphize our ability to connect withthings that look like a roomba our ability to connect first of all let's talk about other

or biological systems like dogs,our ability to love thingsthat are very different than humans.But they do display emotion, right?I mean, dogs do display emotion.

So they don't have to be anthropomorphicfor them to display the kind of emotion that we don't.Exactly.So, I mean, but then the word emotion starts to lose.So then we have to be, I guess, specific, but yeah.

So have rich, flavorful communication.Communication, yeah.Yeah, so like, yes, it's full of emotion.It's full of wit and humor and moodsand all those kinds of things.

Yeah, so you're talking about like flavor.Flavor, yeah.Okay, let's call it that.So there's content and then there is flavorand I'm talking about the flavor.

Do you think it needs to have a body?Do you think like to interact with the physical world?Do you think you can understand the physical worldwithout being able to directly interact with it?I don't think so.

Yeah, I think at some pointwe will need to bite the bulletand actually interact with the physical worldAs much as I like working on like passive computer visionwhere I just like sit in my armchair

and look at videos and learn,I do think that we will need to havesome kind of embodiment or some kind of interactionto figure out things about the world.What about consciousness?

Do you think, how often do you think about consciousnesswhen you think about your work?You could think of it as the more simple thingof self-awareness,of being aware that you are a perceiving, sensing, acting thing in this world.

Or you can think about the bigger version of that, which is consciousness,which is having it feel like something to be that entity,the subjective experience of being in this world.So I think of self-awareness a little bit more than the broader goal of it,because I think self-awareness is pretty critical for any kind of AGI or whatever you want to

call it that we build because it needs to contextualize what it is and what role it'splaying with respect to all the other things that exist around it.I think that requires self-awareness.It needs to understand that it's an autonomous car.And what does that mean?

What are its limitations?What are the things that it is supposed to do and so on?What is its role in some way?These are the kind of things that we kind of expect from it, I would say.And so that's the level of self-awareness that's, I would say, basically required at least, if not more than that.

Yeah, I tend to, on the emotion side, believe that it has to be able to display consciousness.Display consciousness. What do you mean by that?meaning like for us humans to connect with each otheror to connect with other living entities,I think we need to feel,

like in order for us to truly feellike that there's another being there,we have to believe that they're conscious.And so we won't ever connect with somethingthat doesn't have elements of consciousness.

Now, I tend to think that that's easier to achievethan it may soundbecause we anthropomorphize stuff so hard.You have a mug that just has wheelsand rotates every once in a while and makes a sound.

I think a couple days in,especially if you don't hang out with humans,you might start to believe that mug on wheels is conscious.So I think we anthropomorphize pretty effectively as human beings.But I do think that it's in the same bucket

that we'll call emotion.that show that you're, you know,I think of consciousness as the capacity to suffer.And if you're an entity that's able to feel thingsin the world and to communicate that to others,

I think that's a really powerful wayto interact with humans.And in order to create an AGI system,I believe you should be able to richly interact with humans.like humans would need to want to interact with you like it can't be like it's it's the um

self-supervised learning versus like uh like the robot shouldn't have to pay you to interactso like it should be a natural fun thing and then you're going to scale up significantly how much uhinteraction it gets yeah it's the alexa prize which they're trying to get me to be a judgeon their contest.Let's see if I want to do that.

But their challenge is to talk to you,make the human sufficiently interestedthat the human keeps talking for 20 minutes.To Alexa?To Alexa, yeah.

And right now they're not even close to thatbecause it just gets so boringwhen you're like,when the intelligence is not there,it gets very not interesting to talk to it.

And so the robot needs to be interesting.And one of the ways it can be interestingis display the capacity to love, to suffer.And I would say that essentially meansthe capacity to display consciousness,

like it is an entity, much like a human being.Of course, what that really means,I don't know if that's fundamentally a robotics problemor some kind of problem that we're not yet even aware of.Like if it is truly a hard problem of consciousness,

I tend to maybe optimistically think it's a,we can pretty effectively fake it till we make it.So we can display a lot of human-like elements for a while.And that will be sufficient to form really close connections with humans.What to use the most beautiful idea in self-supervised learning?

Like when you sit back with, I don't know,with a glass of wine and an armchair and just at a fireplace,just thinking how beautiful this worldthat you get to explore is,what do you think is the especially beautiful idea?

The fact that like object level,what objects are in some notion of objectness emergesfrom these models by just like self-supervised learning.So for example, like one of the things like the dino paperthat I was a part of at Facebook is the object sort

boundaries emerge from these representations. So if you have a dog running in the field,the boundaries around the dog, the network is basically able to figure out what the boundariesof this dog are automatically. And it was never trained to do that. It was never trained to...No one taught it that this is a dog and these pixels belong to a dog. It's able to group thesethings together automatically. So that's one. And I think in general, that entire notion that

that this dumb idea that you take like these two cropsof an image and then you say that the featuresshould be similar, that has resulted in something like this,like the model is able to figure outwhat the dog pixels are and so on.

That just seems like so surprising.And I mean, I don't think a lot of us even understandhow that is happening really.And it's something we are taking for granted,maybe like a lot in terms of how we're setting up

these algorithms, but it's just,it's a very beautiful and powerful idea.It's really fundamentally telling us something about that there is so muchsignal in the pixels that we can be super dumb about it, about how we are settingup the self-supervailing problem.

And despite being like super dumb about it, we'll actually get very good,um, like we'll actually get something that, uh, is able to do very surprisingthings.I wonder if there's other like objectness, other, otherconcepts that can emerge.

I don't know if you follow Francois Chollet, he had the competition forintelligence that basically it's kind of like an IQ test, but for machines, but for an IQ test,you have to have a few concepts that you want to apply. One of them is objectness. I wonderif those concepts can emerge through self-supervised learning on billions of images.I think something like object permanence can definitely emerge, right? So that's like a

fundamental concept, which we have, maybe not through images, through video, but that's anothera concept that should be emergent from it because it's not something that like you we don't teachhumans that this isn't this is like about this concept of object permanence it actually emergesand the same thing for like animals like dogs i think actually permanence automatically is somethingthat they are born with so i think it should emerge from the data it should emerge basically

very quickly i wonder if ideas like symmetry rotation these kinds of things might emergeso i think rotation probably yes yeah rotation yes i mean there's some constraints in thearchitecture itself right but it's interesting if all of them could be um like counting was anotherone you know being able to kind of understand that there's multiple objects of the same kindin the image and be able to count them i wonder if all of that could be if constructed correctly

they can emerge because then you can transfer those concepts to um to then interpret imagesat a deeper level right counting i do believe i mean should be possible you don't know like yetbut i do think it's not that far in the realm of possibility yeah that'd be interesting if usingself-supervised learning on images can then be applied to then solving those kinds of iq testswhich seem currently to be kind of impossible.

What idea do you believe might be truethat most people think is not trueor don't agree with you on?Is there something like that?So this is going to be a little controversial,

but okay, sure.I don't believe in simulation,like actually using simulation to do things very much.Just to clarify, because this is a podcastwhere you talk about,

are we living in a simulation often?You're referring to using simulation to construct worldsthat you then leverage for machine learning.Right, yeah.For example, one example would be to train an autonomous car driving system.

You basically first build a simulator,which builds the environment of the world,and then you basically have a lot of...You train your machine learning system in that.So I believe it is possible,

but I think it's a really expensive way of doing things.Uh, and at the end of it, you do need the real world.So I'm not sure.So maybe for certain settings, like maybe the payout is so large, like for autonomousdriving, the payout is so large that you can actually invest that much money to build it.

But I think as a general sort of principle, it does not apply to a lot of concepts.You can't really build simulations of everything.Uh, not only because like one it's expensive because a second, it'salso not possible for a lot of things.Uh, so in general, like there is a lot of, um, like there's a lot of work on like

using synthetic data and like synthetic simulators i generally am not very uh like i don't believe inthat so you're saying it's very challenging visually like to correctly like simulate thevisual like the lighting all those kinds of things i mean i mean all these companies that you haveright so like pixar and like whatever all these companies are if they're all this like computergraphics stuff is really about accurately a lot of them is about like accurately trying to figure out

out how the lighting is and like how things reflect off of one another and so on and likehow sparkly things look and so on so it's a very hard problem so do we really need to solve thatfirst to be able to like do computer vision probably not and for me in the context ofautonomous driving it's very tempting to be able to use simulation right because it's a safetycritical application but the other limitation of simulation that perhaps is a bigger one than the

visual limitation is the behavior of objects because the so you're ultimately interested inedge cases and the question is how well can you generate edge cases in simulation especially withhuman behavior i think another problem is like for autonomous driving right it's a constantly changingworld. So say autonomous driving, like in 10 years from now, like there are lots of autonomous cars,but they're still going to be humans. So now there are 50% of the agents say, which are humans,

50% of the agents that are autonomous, like car driving agents. So now the mixture has changed.So now the kinds of behaviors that you actually expect from the other, other agents or other carson the road are actually going to be very different. And as the proportion of the numberof autonomous cars to humans keeps changing, this behavior will actually change a lot. So now if youwere to build a simulator based on just like right now to build them today you don't have that many

autonomous cars on the road so you try to like make all of the other agents in that simulatorbehave as humans but that's not really going to hold true 10 15 20 30 years from now uh do youthink we're living in a simulation no how hard is it uh this is why i think it's an interestingquestion how hard is it to build a video game like virtual reality game where it is so realforget like ultra realistic to where you can't tell the difference but like it's so nice that

you just want to stay there you just want to stay there and you don't want to come backdo you think that's um you think that's doable within our lifetimewithin our lifetime probably yeah are you told they are living longDoes that make you sad that there'll be like, like population of kids that basically spend95%, 99% of their time in a virtual world?

Very, very hard question to answer.For certain people, it might be something that they really derive a lot of value outof, derive a lot of enjoyment and like happiness out of, and maybe the real world wasn't givingthem that that's why they did that so maybe it is good for certain people so ultimately if itmaximizes happiness right i think you judge yeah i think if it's making people happy maybe it's okay

uh again i think it's this is a very hard question uh so like you've uh you've been a part of a lotof amazing papers what advice would you give to somebody on what it takes to write a good papergrad students writing papers now is there um is there common things that you've learned along theway that you think it takes both for a good idea and a good paper right so i think um both of thesei've picked up from like lots of people i've worked with in the past so one of them is picking

the right problem to work on in research is as important as like this like finding the solutionto it. So, I mean, there are multiple reasons for this. So one is that there are certain problemsthat can actually be solved in a particular timeframe. So now say you want to work onfinding the meaning of life. This is a great problem. I think most people will agree with that.But do you believe that your talents and like the energy that you'll spend on it will

make a meaning, like make some kind of meaningful progress in your lifetime?If you are optimistic about it, then like go ahead.That's why I started this podcast.I keep asking people about the meaning of life.I'm hoping by episode like 220, I'll figure it out.

Oh, not too many episodes to go.All right.Maybe today.I don't know.But you're right.

So that seems intractable at the moment.Right.So I think it's just the fact of like,if you're starting a PhD, for example,what is one problem that you want to focus on

that you do think is interesting enoughand you will be able to make a reasonable amountof headway into itthat you think you'll be doing a PhD for?So in that kind of a timeframe.

So that's one.Of course, there's the second part,which is what excites you genuinely.So you shouldn't just pick problemsthat you are not excited about

because as a grad student or as a researcher,you really need to be passionate about itto continue doing thatbecause there are so many other thingsthat you could be doing in life.

So you really need to believe in thatto be able to do that for that long.In terms of papers,I think the one thing that I've learned isI've like in the past,

whenever I used to write thingsand even now, whenever I do that,I try to cram in a lot of thingsinto the paper. Whereas what really matters is just pushing one simple idea. That's it.That's all because that's the paper is going to be like whatever eight or nine pages.

If you keep cramming in lots of ideas, it's really hard for the single thing that you believe in tostand out. So if you really try to just focus on like, especially in terms of writing, really tryto focus on one particular idea and articulate it out in multiple different ways, it's far morevaluable to the reader as well.And basically, uh, to the reader, of course, because they get to, they know

that this particular idea is associated with this paper and also for you because,uh, you have like, when you write about a particular idea in different ways,you think about it more deeply.So as a grad student, I used to always, uh, wait to it, like maybe in the lastweek or whatever, to write the paper, because I used to always believe that

doing the experiments was actually the bigger part of research than writing.And my advisor always told me that you should start writing very early on.And I thought, oh, it doesn't matter.I don't know what he's talking about.But I think more and more I realized that's the case.

Like whenever I write something that I'm doing,I actually think much better about it.And so if you start writing early on,you actually, I think, get better ideasor at least you figure out like holes in your theory

or like particular experiments that you should runto block those holes and so on.Yeah, I'm continually surprisedhow many really good papers throughout historyare quite short and quite simple.

And there's a lesson to that.If you want to dream about writing a paper that changes the worldand you want to go by example, they're usually simple.It's not cramming.It's focusing on one idea and thinking deeply.

And you're right that the writing process itself reveals the idea.It challenges you to really think about what is the idea that explains that,the thread that ties it all together.And so like a lot of famous researchers I know actually would start off likefirst they were, even before the experiments were in, a lot of them would

actually start with writing the introduction of the paper with zero experiments in.Yeah.Because that at least helps them figure out what they're like, what they'retrying to solve and how it fits in like the context of things right now.And that would really guide their entire research.

So a lot of them would actually first write in introswith like zero experiments inand that's how they would start projects.Some basic questions about people,maybe that are more like beginners in this field.

What's the best programming language to learnif you're interested in machine learning?I would say Python,just because it's the easiest one to learn.And also a lot of like programming

in machine learning happens in Python.So if you don't know any other programming language,Python is actually going to get you a long way.Yeah, it seems like sort of it's a toss-up question because it seems like Python is so much dominating the space now.But I wonder if there's an interesting alternative.

Obviously, there's like Swift and there's a lot of interesting alternatives popping up, even JavaScript or R, more like for the data science applications.But it seems like Python more and more is actually being used to teach like introduction to programming at universities.So it just combines everything very nicely.even harder question.What are the pros and cons of PyTorch versus TensorFlow?

I see.Okay.You can go with no comment.So a disclaimer to this is that the last time I used TensorFlowwas probably like four years ago.

And so it was right when it had come out.Because so I started on like deep learning in 2014 or so.And the dominant sort of framework for us then for vision was Cafe,which was out of Berkeley.And we used Cafe a lot. It was really nice. And then TensorFlow came in, which was basically like

Python first. So Cafe was mainly C++ and it had like very loose kind of Python binding. So Pythonwasn't really the first language you would use. You would really use either MATLAB or C++ toget stuff done in Cafe. And then Python, of course, became popular a little bit later.So TensorFlow was basically around that time. So 2015, 2016 is when I last used it. It's been awhile and then what did you use torch or did you so then i moved to lua torch which was the torch

in lua and then in 2017 i think basically pretty much to buy torch completely oh interesting so youwent to lua cool yeah huh so you're you're there before it was cool yeah i mean so lua torch wasreally good because it uh it actually allowed you to do a lot of different uh kinds of things uh sowhich cafe was very rigid in terms of its structure like you you would create a neural network onceand that's it.

Whereas if you wantedlike very dynamic graphsand so on,it was very hard to do thatand LuaTorch was much more friendly

for all of these things.Okay, so in terms of PyTorchand TensorFlow,my personal bias is PyTorchjust because I've been using it longer

and I'm more familiar with it.And also that PyTorchis much easier to debugis what I findbecause it's imperative in nature

compared to like TensorFlowwhich is not imperative.But that's telling you a lotthat basically the imperative designis sort of a way

in which a lot of peopleare taught programmingand that's what actually makes debugging easier for them.So like I learned programming in C, C++.And so for me,

imperative way of programming is more natural.Do you think it's good to havekind of these two communities,this kind of competition?I think PyTorch is kind of more and more

becoming dominant in the research community,but TensorFlow is still very popularin the more sort of application,machine learning community.So do you think it's good to have

that kind of split in code bases?or so like the benefit there is the competition challenges the library developers to step up theirgame yeah but the downside is there's these code bases that are in different different librariesright so i think the downside is that i mean for a lot of research code that's released in oneframework and if you're using the other one it's really hard to like really build on top of it

but thankfully the open source community in machine learning is amazing so yeah wheneverlike something pops up in TensorFlow, you wait a few days and someone who's like super sharp willactually come and translate that particular code base into PyTorch and basically have figured thatall those nooks and crannies out. So the open source community is amazing and they really likefigure out this gap. So I think in terms of like having these two frameworks or multiple, I think

of course there are different use cases, so there are going to be benefits to using one or the otherframework. And like you said, I think competition is just healthy because both of these frameworkskeep or like all of these frameworks really sort of keep learning from each other and keepincorporating different things to just make them better and better what advice would you have forsomeone new to machine learning you know uh maybe just started or haven't even started but are

curious about it and who want to get in the field don't be afraid to get your hands dirty i thinkthat's the main thing so if something doesn't work like really drill into why things are not workingcan you elaborate what your hands dirty means so for example like if an algorithm if you tryto train the network and it's not converging whatever rather than trying to like google theanswer or trying to do something like really spend those like 5 8 10 15 20 whatever number of hours

really trying to figure it out yourself because in that process you'll actually learn a lot more yeahgoogling is of course like a good way to solve it when you need a quick answer but i think initiallyespecially like when you're starting out it's much nicer to like figure things out by yourself and iAnd I just say that from experience because like when I started out, there were not alot of resources.

So we would like in the lab, a lot of us, like we would look up to senior students andthen the senior students were of course busy and they would be like, wait, why don't yougo figure it out?Because I just don't have the time.I'm working on my dissertation or whatever.

I'll find here PhD students.And so then we would sit down and like just try to figure it out.And that I think really helped me.That has really helped me figure a lot of things out.I think in general, if I were to generalize that, I feel like persevering through any

kind of struggle on a thing you care about is good yeah so you're basically you try to makeit seem like it's good to you know spend time debugging but really any kind of struggle whateverform that takes it could be just googling a lot yeah just basically anything just go sticking withit and go into the hard thing that could take a form of implementing stuff from scratch it couldtake the form of re-implementing with different libraries or different programming languages

is it could take a lot of different forms,but struggle is good for the soul.So like in Pittsburgh, where I did my PhD,the thing was it used to snow a lot.Yeah.

And so when it was snowed, you really couldn't do much.So the thing that a lot of people said was snow builds character.Because when it's snowing, you can't do anything else.You focus on work.Do you have advice in general for people?

You've already exceptionally successful, you're young,but do you have advice for young people starting out in collegeor maybe in high school?you know, advice for their career, advice for their life, how to pave a successful path incareer and life? I would say just be hungry, like always be hungry for what you want. And I think

like, I've been inspired by a lot of people who are just like driven and who really like go forwhat they want, no matter what, like, you shouldn't want it, you should need it. So if you needsomething, you basically go towards the ends to make it work. How do you know when you come acrossa thing that that's like you need?I think there's not going to be any single thing that you're going to need.

There are going to be different types of things that you need, but whenever youneed something, you just go push for it.And of course, once you, you may not get it, or you may find that this was not eventhe thing that you were looking for.It might be a different thing, but the point is like you're pushing through

things and that actually gives you, brings a lot of skills and brings a lot of, uh,like build a certain kind of attitude, which will probably help you get the otherthing.once you figure out what's really the thing that you want yeah i think a lot of people arei've noticed the kind of afraid of that is because one it's a fear of commitment

and two there's so many amazing things in this world you almost don't want to miss out on allthe other amazing things by committing to this one thing so i think a lot of it has to do withjust allowing yourself to uh like notice that thing and uh just go all the way with it i meanalso like failure right so yeah i know this is like super cheesy that you know failure is somethingthat you should be prepared for and so on but i do think i mean especially in research for example

failure is something that happens almost like almost every day is like experiments failing andnot working and so you really need to be so used to it you need to have a thick skin but and onlybasically through like when you get through it is when you find the one thing that's actuallyworking like thomas edison was like one person like that right so i really like when i was akid i used to really read about how he uh found like the filament the light bulb filament and

then he i think his thing was like he tried 990 things that didn't work or something of the sortand then they asked him like so what did you learn because all of these were failed experiments andthen he says oh these 990 things don't work and i know that did you know that i mean that's reallyIt's fighting.So you spent a few years on this earth

performing a self-supervised kind of learning process.Have you figured out the meaning of life yet?I told you I'm doing this podcast to try to get the answer.I'm hoping you could tell me.What do you think the meaning of it all is?

I don't think I figured this out, no.I have no idea.Do you think AI will help us figure it out?Or do you think there's no answer?The whole point is to keep searching.

I think, yeah, I think it's an endless sort of quest for us.I don't think AI will help us there.This is like a very hard, hard, hard question,which so many humans have tried to answer.Well, that's the interesting thing about the difference between AI and humans.

Humans don't seem to know what the hell they're doing.And AI is almost always operating under well-defined objective functions.And I wonder whether our lack of ability to define good long-term objective functions or introspect what is the objective function under which we operate, if that's a feature or a bug.I would say it's a feature because then everyone actually has very different kinds of objective functions that they're optimizing.And those objective functions evolve and change dramatically through the course of their life.

That's actually what makes us interesting, right?Otherwise, like if everyone was doing the exact same thing,that would be pretty boring.We do want like people with different kinds of perspectives.Also people evolve continuously.

That's like, I would say the biggest feature of being human.And then we get to like the ones that diebecause they do something stupid.We get to watch that, see it and learn from it.And as a species, we take that lesson

and become better and betterbecause of all the dumb people in the worldthat died doing something wild and beautiful.Ishan, thank you so much for this incredible conversation.We did a depth first search

through the space of machine learningand it was fun and fascinating.So it's really an honor to meet youand it was a really awesome conversation.Thanks for coming down today and talking with me.

Thanks Lex.I mean, I've listened to you.I told you it was unreal for meto actually meet you in person and I'm so happy to be here.Thank you.

Thanks man.Thanks for listening to this conversation with Ishan Mizra.And thank you to Onnit, The Information,Grammarly and Athletic Greens.Check them out in the description to support this podcast.

And now let me leave you with some wordsfrom Arthur C. Clarke.Any sufficiently advanced technologyis indistinguishable from magic.Thank you for listening and hope to see you next time.

Thank you.
