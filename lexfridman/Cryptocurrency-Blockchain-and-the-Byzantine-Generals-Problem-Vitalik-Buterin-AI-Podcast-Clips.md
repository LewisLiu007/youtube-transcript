---
title: "Cryptocurrency, Blockchain, and the Byzantine Generals Problem (Vitalik Buterin) | AI Podcast Clips"
channel: lexfridman
url: "https://www.youtube.com/watch?v=Ym_t0LvHg-g"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Cryptocurrency, Blockchain, and the Byzantine Generals Problem (Vitalik Buterin) | AI Podcast Clips

If we could, can we go to the very basics?What is the blockchain?Or perhaps we might even start at the Byzantine generals problem, the Byzantine fault tolerance in general, that Bitcoin was taking steps to providing a solution for.So the Byzantine generals problem, it's this paper that Leslie Lamport published in 1982, where he has this thought experiment where if you have two generals that are camped out on opposite sides of a city, and they're planning when to attack the city, then the question is, and if how could those generals coordinate with each other, and they could send messengers between each other.but those messengers

could get sniped by the enemyon the roadsome of those messengers could end up being traitorsand things could end up happeningand

with just twomessgenerals it turns out that there'sno solution in afinite number of rounds that guarantees

that they will beable to coordinate on the same answerbut then in the case wherehave more than two generals and then leslie analyzes cases like um are the mess and messageskind of just oral messages um are the messages kind of signed messages so i can give you a

signed message and you can pass along that signed message and the third party can still verify thati originally made that message and depending on those different cases there's kind of differentbounds on given how many generals and how many traders among those generals and underwhat conditions you actually can agree when to launch an attack.So it's actually a big misconception that the Byzantine generals problem was unsolved.

So Leslie Lamport solved it.The thing that was unsolved, though, is that all of these solutions assume that you'vealready agreed on and have fixed the list of who the generals are.and these generals have to be kind of semi-trusted to some extent they can't just be anonymous peoplebecause if they're anonymous then like the enemy could just be 99 of the generals uh so right the

um in the 1980s and the 1990s kind of the general use case for distributed system stuff was morekind of enterprise-y stuff where you could kind of assume that you know who the nodes are thatare running these kind of computer networks. So if you want to have some kind of decentralizedcomputer network that pretends to be a single computer and that you can kind of do operationson, then it's made out of these kind of 15 specific computers and we know kind of who and

where they are. And so we have a good reason to believe that say at least 11 of them would be fine.and it could also be within a single system exactly almost a network of devices sensorsso on like in airplanes and i think uh like flight systems in general still use these kinds of ideasyep yep um so that's the 80s that's the 80s and 90s now the cypherpunks had a different use casein mind which is that they wanted to create a fully decentralized global permissionless currency

and the problem here is that they didn't want any authorities and they didn't even want anykind of privileged list of people and so now the question is well how do you use these techniquesto create consensus when you have no way of kind of measuring identities right you have no way ofkind of determining whether or not some 99 of participants aren't actually all the same guyAnd so the clever solution that Satoshi had, this is kind of going back to that presentation I made at DEF CON a few months ago, where I said that the thing Satoshi invented was crypto economics, is this really neat idea that you can use economic resources to kind of limit how many identities you can get.

And if there isn't any existing decentralized digital currency, then the only way to do this is with proof of work, right?So with proof of work, the solution is just you publish a solution to a hard mathematical puzzle that takes some kind of clearly calculable amount of computational power to solve, you get an identity.And then you solve five of those puzzles, you get five identities.And then these are the identities that we run the consensus algorithm between.So the proof of work mechanism you just described is like the fundamental idea proposed in the white paper that defines Bitcoin.

What's the idea of consensus that we wish to reach?Why is consensus important here?What is consensus?So the goal here in just simple technical terms is to basically kind of wire together a set of a large number of computers in such a way that they kind of pretend to the outside world to be a single computer where that single computer keeps working, even if a large portion of the kind of constituents, the computers that make it up break.in kind of breaking arbitrary ways.

Like they could shut off,they could try to actively break a system,they could do lots of mean things.So the reason why the cypherpunks wanted to do thisis because they wanted to run one particular program

on this virtual computer.And the one particular program that they wanted to runis just a currency system, right?It's a system that just processes a series of transactions.And for every transaction,

it verifies that the sender has enough coins to pay for the transaction it verifies that thedigital signature is correct and if the check's passed then it subtracts the coins from oneaccount and adds the coins to the other account roughly so first of all the the the proof of workidea is kind of i mean at least to me seems pretty fascinating it is i mean that's a it's kind of arevolutionary idea. Is it obvious to come up with that you can

exchange basically computational resourcesfor identity?It actually has a pretty long history. It was firstproposed in a paper by Cynthia Dwork andNair in 1994, I believe.

And the original use case was combating email spam. So theidea is that if you send an email, you have to send it with a proof of work attached. Andlike this makes it reasonably cheap to send emails to your friends, but it makes it reallyexpensive to send spam to a million people. Yeah, that's a simple, brilliant idea. So maybealso taking a step back. So what is the role of blockchain in this? What is the blockchain?

Sure. So the blockchain, my way of thinking about it is that it is thissystem where you have this kind of one virtual computer created by a bunch of these nodes inthe network. And the reason why the term blockchain is used is because the data structure that thesesystems use, at least so far, is one where different nodes in the network periodicallypublished blocks and a block is a kind of list of transactions uh together with a pointer like a hash

of a uh a previous block that it builds on top of um and so you have a series of blocks that thatnodes in the network create where each block points to the previous block and so you havethis chain of them is a fault tolerance mechanism built into the idea of blockchain or is there aa lot of possibilities of different ways to make sure there's no funny stuff going on there areindeed a lot of possibilities um so in a kind of just simple architecture as i just described the

way the fault tolerance happens is like this right so you have a bunch of nodes and they're justhappily kind of occasionally creating blocks building on top of each other's uh blocks andlet's say you have kind of one block we'll call it kind of block one um and then someone else buildsanother block honestly we'll call it block two then we have an attacker and what the attackertries to do is the attacker tries to revert block two and the way they revert block two is instead

of doing the thing they're supposed to do which is build a block on top of block two they're going tobuild another block on top of block one um so you have block one which has two children block twoand then block two prime now this might sometimes even happen by random chance if you know two nodesin the network just happen to create blocks at the same time and they don't hear about each other'sthings before they create their own but this also could happen because of an attack now if this

happens you have an attack then the note in the bitcoin system uh the nodes follow the longestchain um so if um this um attack had happened uh and when the original chain had more than twoblocks on it. So if it was trying to kind of revert more than two blocks, then everyone wouldjust ignore it and everyone would just keep following the regular chain. But here, you know,we have block two and we have block two prime. And so the two are kind of even. And then whatever

block the next block is created on top of, so say block three is now created on top of block twoprime then everyone said agrees that block three is the new head um and block two prime is justkind of forgotten and then everyone just kind of peacefully builds on top of block three and thething continues so how difficult is it to mess with the system i so how like if we look at thegeneral problem like how many what fraction of people who participate in the system have to be

bad players in order to mess with it truly like what's your is there is there a good number thereis um well depending on kind of what your model of the participants is and like what kind of attackwe're talking about it's anywhere between 23.2 and 50 percent of what of all of the computingpower in the network sorry so 22 and 23 point between 23.2 and 50 and 50 percent are can beuh compromised so like once your once your pers your portion of the total um computing power the

network goes above the 23.2 level then there's kind of things that you can mean things that youcan potentially do and as your percentage of the network kind of keeps going up then the youryour ability to do mean things kind of goes higher.And then if you have above 50%,then you can just break everything.

So how hard is it to achieve that level?Like it seems that so far, historically speaking,it's been exceptionally difficult.This is a challenging question.So the economic cost of acquiring that level of stuff

from scratch is fairly high.I think it's somewhere in the low billions of dollars.And when you say that stuff, you mean computational?resources yeah so specifically specialized hardware and of asics that people use tosolve these puzzles to do the mining these small small tangent uh so obviously i work a lot in deep

learning with gpus and asics for that application and i tangentially kind of hear that so many ofthese you know sometimes nvidia gpus are sold out because of this other application like what doif you can comment i don't know if you're familiar or interested in the space what kind of asics whatkind of hardware is generally used these days for to do the actual computation for the proof of worksure so in the case of bitcoin and ethereum are a bit different so in the case of bitcoin there

is an algorithm called the shot 256 it's just a hash function and so the puzzle is just comingup with a number where the hash of the number is below some threshold and so because the hashes aredesigned to be random. You just have to keep on trying different numbers until one works.And the ASICs are just specialized circuits that contain circuits for evaluating this hash over andover again. And you have millions or billions of these hash evaluators just stacked on top of each

other inside of a box, and you just keep on running the box 24-7.In the ASICs, there's literally specialized hardware designed for this.Yes.Oh, this is living in an amazing world.So another tangent, and I'll come back to the basics, but does quantum computing throw

a wrench into any of this?Very good question.So quantum computers have two main families of algorithms that are relevant to cryptography.One is Shor's algorithm, and Shor's algorithm is one that kind of completely breaks thehardness of some specific kinds of mathematical problems.

so the one that you've probably heard of is it makes it very easy to factor numbers so figureout kind of what prime factors are that kind of that you need to multiply together to get somenumber even if that number is extremely big um shores algorithm can also be used to breakelliptic curve cryptography um it can break like any kind of hidden order groups like it breaks alot of kind of cryptographic nice things that we're used to but the good news is that for every

and of major use of things that Shor's algorithm breaks,we already know of quantum proof alternatives.Now, we don't use these quantum proof alternatives yetbecause in many cases,they're five to 10 times less efficient,

but the crypto industry in generalkind of knows that this is coming eventuallyand it's kind of ready to take the hitand switch to that stuff when we have to.The second algorithm that is relevant to cryptography

is Grover's algorithm. And Grover's algorithm might even be more familiar to AI people. It'sbasically usually described as solving search problems. But the idea here is that if you havea problem of the form, find a number that satisfies some property. Then if with a classicalcomputer, you need to try n times before you find the number, then with a quantum computer,you only need to do square root of n computations. And Grovers could potentially be used for mining,

but there's two possibilities here. One is that Grovers could be used for mining,and whoever creates the first working quantum computer that could do Grovers will just mineway faster than everyone else, and we'll see another round of what we saw when ASICs came out,which is that the new hardware just dominated the old stuff, and then eventually it switchedwhen you equilibrium but by the way way faster not exponentially faster quadratically faster

quadratically faster which is not sort of uh it's not game changing i would say it's like asics likeyou said it would be exactly yeah so it would not necessarily break proof of work as a thing that'sright yeah now the other kind of possible world right is that quantum computers have a lot ofoverhead there's a lot of complexity involved in maintaining quantum states and there's alsoSo as we've been realizing recently, making quantum computers actually work requires kind

of quantum error correction, which requires kind of a thousand real qubits per logicalqubit.And so there's the very real possibility that the overhead of running a quantum computerwill be higher than the speed up you get with Grover's, which would be kind of sad, butwhich would also mean that given proof of work, we'll just keep working fine.

So beautifully put.So proof of work is the core idea of Bitcoin.Is there other core ideas before we kind of take a step towards the origin story and ideas of Ethereum?Is there other stuff that were key to the white paper of Bitcoin?There is proof of work and then there's just the cryptography, just kind of public keys and signatures that are used to verify transactions.

Those two are the big things.Thank you.
