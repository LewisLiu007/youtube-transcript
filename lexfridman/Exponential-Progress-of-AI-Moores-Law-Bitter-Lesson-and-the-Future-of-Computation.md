---
title: "Exponential Progress of AI: Moore's Law, Bitter Lesson, and the Future of Computation"
channel: lexfridman
url: "https://www.youtube.com/watch?v=Me96OWd44q0"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Exponential Progress of AI: Moore's Law, Bitter Lesson, and the Future of Computation

This video is looking at exponential progress of artificial intelligence from a historical perspectiveand anticipating possible future trajectories that may or may not lead to exponential progress of AI.At the center of this discussion is a blog post called The Bitter Lesson by Rich Sutton,which ties together several different concepts,specifically looking at the role of computation in the progress of artificial intelligence

and computer science in general.this blog post and the broader discussion is part of the AI paper club on our discord server if youwant to join the discussion everyone is welcome link is in the description so I'd like to firstdiscuss the argument made in the bitter lesson by Ray Sutton that discusses the role of computationin the progress of artificial intelligence and then I'd like to look into the future and see

what are the possible ideas that will carry the flag of exponential improvement in AI whether itis in computation with the continuation of Moore's law or a bunch of other ideas in bothhardware and software.So, the bitter lesson.The basic argument contains several ideas.

The central idea is that most of the improvement in artificial intelligence over the past 70years has occurred due to the improvement in computation versus improvement in algorithms.And when I say improvement in computation, I mean Moore's law transistor count doublingevery two years.And so it wasn't the innovation in the algorithms, but instead the same brute force algorithms

that were sufficiently general and were effective at leveraging computation were the ones associatedwith successful progress of AI.So put another way, general methods that are automated and can leverage big compute arebetter than specialized, fine-tuned, human expertise injected methods that leverage smallcompute.

And when I say small compute, I'm referring to any computational resources available today.Because with the exponential growth of computational resources over the past many decades with Moore's Law, basically anything you have today is much smaller than anything you'll have tomorrow.That's how exponential growth works.And looking from yet another perspective of human expertise, human knowledge injection,AI that discovers a solution by itself is better than AI that encodes human expertise

and human knowledge.Rich Sutton also in his blog post argues that the two categories of techniques that weremost capable of leveraging massive amounts of computation are learning techniques andsearch techniques.Now, by way of example, you can think of search techniques as the ones that were used to beat

Garry Kasparov, IBM Deep Blue, and the game of chess.These are these brute force search techniques that were criticized at the time for beingfor their brute force nature.And the same, I would say, is the brute force learning techniques of Google DeepMind thatbeat the world champion at the game of Go.

Now the reason I call self-play mechanism brute force is because the reinforcement learning methods of today are fundamentally wasteful in terms of how efficient they are at learning.And that's the critical thing about brute force methods that Rich Sutton argues that these methods are able to leverage computation.So they might not be efficient or they might not have the kind of cleverness that human expertise might provide, but they're able to leverage computation and therefore as computation exponentially grows, they're able to outperform everything else.And the blog post provides a few other examples of speech recognition that started with heuristics that went to the statistical methods of HMMs and finally now the recent big successes in speech recognition and natural language processing in general with neural networks.And the same in the computer vision world, the fine-tuned human expertise feature selection

of everything that led up to SIFT, and then finally with the big ImageNet moment, it showedthat neural networks are able to discover automatically the hierarchy of features requiredto successfully complete different computer vision tasks.I think this is a really thought-provoking blog post because it suggests that when wedevelop methods, whether it's in the software or the hardware, we should be thinking about

long-term progress, the impact of our ideas, not for this year, but in five years, 10 years,20 years from now. So when you look at the progress of the field from that perspective,there's certain things that are not going to hold up. And Rich argues that actually majority ofthings that we work on in the artificial intelligence community, especially in academiccircles is too focused on the injection of human expertise because that is how you're able to get

incremental improvement that you can publish on and then sort of get, you know, add publicationsto your resume. You have career success and progress and you feel better because you'reinjecting your own expertise into the system as opposed to having these quote-unquote dumband brute force approaches.I think there is something

from a human psychologist's perspectiveabout brute force methods just not being associatedwith innovative, brilliant thinking.In fact, if you look at the brute force searchor the brute force learning approaches,

I think at the time, if we look at it today,the publications and the science associatedwith these methods, I think,did not get the recognition they deserve.They got a huge amount of recognition

because of the publicity of the actual matchesthey were involved in, but the scientific community,I don't think gave enough respectto the scientific contribution of these general methods.As interesting, thought-provoking idea,

I would love to see that when people publish papers today,it maybe almost have like a section where they describeif computation was able to be scaled by 10X, by 100X,looking five, 10 years down the future,will this method hold up to that scaling?

Is it scalable?Is this method fundamentally scalable?I think that's a really good question to ask.Is this something that would benefit,at least scale linearly with compute?

That to me is a really interesting and provocative questionthat all graduate students and faculty and researchersshould be asking themselves about the methods they propose.Overall, I think this blog post servesas a really good thought experiment

because I think we often give a disproportionate amountof respect, I think, to algorithmic improvementand not enough respect when we look at the big arcof progress in artificial intelligence to computation,to the improvement of computation,

whether that's talking about just the raw transistor countor other aspects of improving the computational process.If we look at this blog post as it is,you can of course raise some contentionsand some opposing views.

First, the blog post doesn't mention anything about data.And in terms of learning,if we look at the kind of learningthat's been really successful for real-world applications,it's supervised learning,

meaning it's learning that uses human annotation of data.And so the scalability of learning methods with computationalso needs to be coupled with the scalabilityof being able to annotate data.And it's unclear to me how the scalability with computation

is naturally scaled with annotation of data.Now I'll propose some ideas there later on.I think they're super excitingin the space of active learning,but in general, those two are not directly linked,

at least in the argument of the blog post.So to be fair, the blog post is lookingat the historical context of progress in AI.And so in that way, it's looking at methodsthat leverage the exponential improvement

in raw computational power as observed by Moore's Law.But of course, you can also generalize this blog postto say really any methods that hook ontoany kind of exponential improvement,so computational improvement at any level of abstraction,

including as we'll later talk aboutat the highest level of abstraction of deep learningor even meta-learning.As long as it can, these methods can hook ontoexponential improvement in these contexts, it's able to ride the wave of exponential improvement.

It's just that the main exponential improvement we've seen in the past 70 years is that of Moore'slaw. Another contention that I personally don't find very convincing is when you say that learningor search methods don't require much human expertise, well, they kind of do. You stillneed to do some fine-tuning. There's still a bunch of tricks, even though it's at the higher level.and the reason I don't find that very convincing is because I think the amount and the quality of

human expertise required for deep learning methods is just much smaller and much moredirected than in classical machine learning methods or especially in heuristic based methods.Now one big, I don't know if it's a contention but it's an open question for me,it's often useful when we try to chase the creation of intelligent systems to think aboutthe existence proof that we have before us, which is our own brain. And I think it's fair to say

that the process that created the intelligence of our brain is the evolutionary process.Now, the question as it relates to the blog post, to me, is whether evolution falls under thecategory of search methods or of learning methods. There's some mix of the two. Is it a subset,a combination of the two, or is it a superset? Or is it a completely different kind of thing?I think that's a really interesting

and really difficult question for methat I think about often.What is the evolutionary processin terms of our best performing methods of today?Of course, there's genetic algorithms,

there's genetic programming,these are very kind of specialized,evolution-inspired methods,but the actual evolutionary processthat created life on Earth,

that created intelligent life on Earth,how does that relate to the searchand the learning methods that leverage computation so well.It does seem from a 10,000 foot levelthat the evolutionary process,

whether it relates to search or learning,is the kind of processthat would leverage computation very well.In fact, from a human-centric perspectiveof a human that values his life,

the evolutionary process seems to be very brute force,very wasteful.So in that way, perhaps it does have similaritiesto the brute force search and the brute force learningself-play mechanisms that we see

so successfully leveraging computation.So to summarize the argument made in the bitter lesson,the exponential progress of AI over the past 60, 70 yearswas coupled to the exponential progress of computationwith Moore's law and the doubling of transistors.

And as we stand today, the open question then is,if we look at the possibilityof future exponential improvementof artificial intelligence,Will that be due to human ingenuity,

so invention of new, better, clever algorithms?Or will it be due to improvement increasein raw computational power?Or I think a distinct option is both.I'll talk about my bets for this open question

at the end of the video, but at this time,let's talk about some possible flag bearersof exponential improvement in AIin the coming years and decades.First, let's look at Moore's Law, which is an observation.

It's not a law.It has two meanings, I would say.One is the precise technical meaning or the actual meaning, which is the doubling of transistorcount every two years.Or you can look at it from a financial perspective and look at dollars per flop decreasing exponentially.

This allows you to compare CPUs and GPUs and different kind of processes together on thesame plot.And the second meaning, I think that's very commonly used in general public discourse,is the general sense that there's an exponential improvement of computational capabilities.And I'm actually personally okay with that use of Moore's law as we generalize across

different technologies and different ideas to use Moore's law to mean the general observationof the exponential improvement of computational capabilities.So the question that's been asked many times over the past several decades is Moore's lawdead.I think it has two camps.

majority of the industry says yes and then there's a few folks like jim keller of now intel i did apodcast with him i highly recommend it says no because actually when we look at the size oftransistors we have not yet hit the theoretical physics limit of how small we can get with thetransistors now it gets extremely difficult for many reasons to get a transistor that startsapproaching the size of a single nanometer in terms of power, in terms of error correction,

in terms of what's required for actual fabrication of that kind of scale of thing.But the theoretical physics limit hasn't been reached, so Moore's law can continue.But also, if we look at the broader definition of just exponential improvement of computationalcapabilities, there's a lot of other candidates, flag bearers, as I mentioned, that could carrythat exponential flag forward. Let's look at them now. One is the global compute capacity.

Now, this one is really interesting, and I actually had trouble finding good datato answer the very basic question. I don't think that data exists. The question being,how much total compute capacity is there in the world today? And looking historically,how has it been increasing? There's a few kind of speculative studies, some of them I cite here.They're really interesting, but I do wish there was a little bit more data.

I'm actually really excited by the potential of this in a way that is completely unexpectedpotentially in the future.Now, what are we talking about?We're talking about the actual number of general compute capable devices in the world.One of the really powerful compute devices that appeared over the past 20 years is gaming

consoles.The other one, I mean, past maybe 10 years, is smartphone devices.Now, if we look into the future, the possibility, first of all, of smartphone devices growingexponentially, but also the compute surface across all types of devices.So if we think of Internet of Things, every object in our day-to-day life gaining computational

capabilities means that that computation can be then leveraged in some distributed way.And then we can look at an entirely other dimension of devices that could explode exponentially in the near or the long-term future of virtual reality and augmented reality devices.So currently, both of those type of devices are not really gaining ground, but it's very possible that in the future, a huge amount of computational resources become available for these virtual worlds, for augmented worlds.So I'm actually really excited by the potential things that we can't yet expect in terms of the exponential growth of actual devices which are able to do computation.The exponential expansion of compute surfaces in our world.

That's really interesting.That might force us to rethink the nature of computation to push it more and more towards distributed computation.So speaking of distributed computation, another possibility of exponential growth of AI isjust massively parallel computation.So increasing CPUs, GPUs, stacking them on top of each other, and increasing that stack

exponentially.Now, you run up against Amdahl's law and all kinds of challenges that characterize thatas you increase the number of processors, it becomes more and more difficult.there's a diminishing return in terms of the compute speedup you gain when you add moreprocessors. Now, if we can overcome that Amdahl's law, if we can successfully design algorithms that

are perfectly parallelizable across thousands, maybe millions, maybe billions of processors,then that changes the game. That changes the game and allows us to exponentially improvethe AI algorithms by exponentially increasing the number of processors involved.Another dimension of approaches that contribute to exponential growth of AI is devices thatare at their core parallelizable, more general devices like the GPUs, graphic processing

units, or ones that are actually specific to neural networks or whatever the algorithmis, which is ASICs, application-specific integrated circuits.The TPU by Google being an excellent example of that, where there's a bunch of hardwaredesign decisions made that are specialized in machine learning, allowing it to be muchmore efficient in terms of both energy use and the actual performance of the algorithm.

Now, another big space that I could probably divide in many slides of flag bearers forexponential AI growth is changing the actual nature of computation. So a completely differentkind of computation. So two exciting candidates shown here. One is quantum computing and the otherthere's neuromorphic computing.You're probably familiar with quantum computers,

with qubits versus classical computersthat only represent zeros and ones.Qubits also represents zero, ones,and the superposition is zero and ones.So there is a lot of excitement and development in this space,

but it's, I would say, very early days,especially considering general methodsthat are able to leverage computation.First, it's really hard to build large quantum computers,but even if you can, second, it's very hard to build algorithms that significantly outperform

the algorithms on classical computers, especially in the space of artificial intelligence withmachine learning. Then there's another space of computing called neuromorphic computingthat draws a lot of inspiration, a lot more inspiration from the human brain. Specifically,it models spiking networks. Now, the idea, I think, with neuromorphic computing is it's ableto perform computation in a much more efficient way. One of the characteristic things about the

human brain versus our computers today is it's much more energy efficient than our computersfor the same amount of computation. So a neuromorphic computer is trying toachieve the same kind of performance. Again, very early days, and it's unclear how you candesign general algorithms that reach even close to the same performance of machine learningalgorithms, for example, run on classical computers of today with GPUs or ASICs. But of course,

if you want to have a complete shift, like a phase shift in terms of the way we approachcomputation and artificial intelligence, a computer which functions in a completely differentway than our classical computers is something that might be able to achieve that kind of phase shift.Now, another really exciting space of methodologies is brain-computer interfaces.In the short term, it's exciting because it may help us understand and treat neurological diseases.

But in the long term, the possibility of leveraging human brains for computation,now that's a weird way to put it, but we have a lot of compute power in our brains. We're actuallydoing a lot of computation, each one of us, every living moment of our lives. And the unfortunatething is we're not able to share the outcome of that computation with the world. We share it witha very low bandwidth channel. So not from an individual perspective, but from a perspective

of a society, it's interesting to consider if we can create a high bandwidth connection betweenthe computer and the human brain, then we're able to leverage the computation the human brainalready provides to be able to add to the global compute capacity available to the world.That's a really interesting possibility.The way I put it is a little bit ineloquent, but I think oftentimes when you talk about

brain-computing interfaces the way, for example, Elon Musk talks about Neuralink, it's oftentalked about from an individual perspective of increasing your ability to communicatewith the world and receive information from the world.But if you look from a society perspective,you're now able to leverage the computational power

of human brains, either the empty cyclesor just the actual computation we'll performto survive in our daily lives,able to leverage that to add to the global compute surface,the global capacity available in the world.

And the human brain is quitean incredible computing machine.So if you can connect into thatand share that computation,I think incredible exponential growth can be achieved

without significant innovation on the algorithm side.Now, a lot of the previous things we talked aboutwas more on the hardware side,or at least very low level software sideof exponential improvement.

I really liked the recent paper from Danny Hernandezand others at OpenAI called"'Measuring the Algorithmic Efficiency of Neural Networks'that looks at different kind of domainsof machine learning and deep learning,

and shows that the efficiency of the algorithms involvedhas increased exponentially,actually far outpacing the improvement of Moore's law.So if we look at sort of the main one,starting from the ImageNet moment

with AlexNet neural network on the computer vision task,if we look at AlexNet in 2012,and then EfficientNet in 2019,and all the networks that led up to it,the improvement is it takes 44 times less computation

to train a neural network to the level of AlexNet. So if we look at Moore's law in the same kind ofspan of time, Moore's law would only observe a 11 times decrease in the cost. And the paperhighlights also the same kind of exponential improvements in natural language, even inreinforcement learning. So the open question raises is maybe with deep learning, when we lookat these learning methods, that the algorithmic process may yield more gains than hardware

efficiency improvements. That's a really exciting possibility, especially for people working in thefield, because that means human ingenuity will be essential for the continuation exponentialimprovement of AI. All that said, whether AI will continue to improve exponentially is an openquestion. I want to sort of place a flag down. I don't know, I change my mind every day on mostthings, but today I feel AI will continue to improve exponentially. Now, exponential improvement

is always just a stack of S-curves. It's not a single sort of nice exponential improvement.It's always kind of big breakthrough innovation on top of each other that level out and then a newinnovation comes along. So the other open question is where will the S-curves that feed theexponential come from? Most likely out of the candidates that we discussed. So for me, theinnovation and algorithms and innovation and supervised learning in how data is organized

and leveraged in that learning process. So the efficiency of learning and search processes,especially with active learning. You know, there's a lot of terminology swimming aroundthat's a little bit loose. So folks like Yann LeCun is really excited by self-supervised learning.And you can think of it, you can define it however the heck you want, but you can thinkof self-supervised learning as leveraging human annotation very little, leveraging human expertise

very little. So that's looking at mechanisms that are extremely powerful like self-play inreinforcement learning or in a video computer vision context. The idea would be that you wouldhave an algorithm that just watches YouTube videos all day and from that is able to figure out thecommon sense reasoning, the physics of the world, and so on in an unsupervised way just by observingthe world. Now for me, I'm excited by active learning much more, which is the optimization

of the way you select the data from which you learn from. You say, I'm going to learn,I'm going to become increasingly efficient, I'm going to learn from smaller and smaller data sets,but I'm going to be extremely selective about which part of the data I look at and annotateor ask human supervision over. I think a really simple but exciting example of that in the realworld is what the Tesla Autopilot team is doing by creating this pipeline where there's a multi-task

learning framework where there's a bunch of different tasks and there's a pipeline fordiscovering edge cases for each of the tasks and you keep feeding back the edge cases discoveredand then you keep feeding those edge cases back and retraining the network over and over for eachof the different tasks and then there's a shared part of the network that keeps learning over timeSo there's this active learning framework that just keeps looping over and over and gets better and better over time as it continually discovers and learns from the edge cases.

I think that's a very simple example of what I'm talking about, but I'm really excited by that possibility.So innovation and learning in terms of its ability to discover just the right data to improve its performance.And I believe the performance of active learning can increase exponentially in the coming years.Another source of S-Gauss that I'm really excited about,but it's very unpredictable,

is the general expansion of the compute surfacesin the world.So it's unclear, but it's very possiblethat the Internet of Things, IoT,eventually will come around

where there's smart devices just everywhere.And we're not talking about Alexa here or there,We're talking about just everything is a compute surface.I think that's a really exciting possibility of the future.Maybe far away, but I certainly hope to be part

of the people that tries to create some of that future.So it's an exciting out there possibility.To me, the total game changer that we don't expect,that seems crazy, especially when Elon Musk talks aboutin the context of Neuralink, is brain computer interfaces.

I think that's a really exciting technologyfor helping understand and treat neurological diseases.But if you can make it workto where a computer can communicatein a high bandwidth way with a brain,

a two-way communication,that's going to change the nature of computationand the nature of artificial intelligence completely.If an AI system can communicate with the human brainand each leveraging each other's computation,

that's, I don't think we can even imaginethe kind of world that that would create.That's a really exciting possibility,but at this time it's shrouded in uncertainty.It seems impossible and crazy,

but if anyone can do it,it's the folks working on brain-computer interfacesand certainly folks like Elon Muskand the brilliant engineers working at Neolink.When you talk about exponential improvement in AI,

the natural question that people ask is,when is the singularity coming?Is it 2030, 2045, 2050, a century from now?Again, I don't have firm beliefs on this,but from my perspective,

I think we're living through the singularity.I think the smoothness of the exponential improvementthat we've been a part of in artificial intelligenceis sufficiently smooth to where we don't even sensethe madness of the curvature of the improvement

that we've been living through.I think it's been just incredible.and every new stage we just so quickly take for granted.I think we're living through the singularityand I think we'll continue adapting incredibly well

to the exponential improvement of AI.I can't wait to what the future holds.So that was my simple attemptto discuss some of the ideas by Rich Suttonin his blog post, The Better Lesson

and the broader context of exponential improvement in AIand the role of computation and algorithmic improvementin that exponential improvement.This has been part of the AI Paper Clubon our Discord server.

You're welcome to join anytime.It's not just AI.It's people from all walks of life,all levels of expertise,from artists to musicians to neuroscientists to physicists.

It's kind of an incredible community,and I really enjoyed being part of it.It's, I think, something special.So join us anytime.If you have suggestions for papers we should cover,

let me know.Otherwise, thanks for watching,and I'll see you next time.Thank you.
