---
title: "GPT-3 vs Human Brain"
channel: lexfridman
url: "https://www.youtube.com/watch?v=kpiY_LemaTc"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# GPT-3 vs Human Brain

The human brain has at least 100 trillion synapses, and it could be as high as 1,000 trillion.And a synapse is a channel connected to neurons through which an electrical or chemical signal is transferred,and is the loose inspiration for the synapses, weights, parameters of an artificial neural network.GPT-3, the recently released language model from OpenAI that has been captivating people's imagination with zero-shot or few-shot learning,has 175 billion synapses or parameters.

As mentioned in the OpenAI paper,the amount of compute that was used to train the final version of this networkwas 3.14 times 10 to the 23rd flops.And if we use reasonable cost estimates based on Lambda's Tesla V100 cloud instance,the cost of training this neural network is $4.6 million.

Now the natural question I had is,if the model with 175 billion parameters does very well,how well will a model do that has the same numberof parameters as our human brain?Setting aside the fact that both our estimate

of the number of synapses and the intricate structureof the brain might require a much, much largerneural network to approximate the brain.But it's very possible that even just this 100 trillionsynapse number will allow us to see some magical performance

from these systems.And one way of asking the question of how far away are weis how much does it approximately costto train a model with 100 trillion parameters?So GPT-3 is 175 billion parameters

and $4.6 million in 2020.Let's call it GPT-4-HB with 100 trillion parameters.Assuming linear scaling of compute requirementswith respect to number of parameters,the cost in 2020 for training this neural network

is $2.6 billion.Now another interesting open AI paperthat I've talked about in the past,titled Measuring the Algorithmic Efficiencyof Neural Networks,

indicates that for the past seven years,the neural network training efficiencyhas been doubling every 16 months.So if this trend continues,then in 2024, the cost of training this GPTHB network

B network would be $325 million, decreasing to $40 million in 2028, and in 2032 coming down toapproximately the same price as the GPT-3 network today at $5 million. Now it's important to noteas the paper indicates that as the size of the network and the computer increases, the improvementof the performance of the network follows a power law. Still, given some of the impressivetouring test passing performances of GPT-3,

it's fascinating to think what a language modelwith 100 trillion parameters might be able to accomplish.I might make a few short videos like thesefocusing on a single simple idea on the basics of GPT-3including technical, even philosophical implications

along with highlighting how others are using it.So if you enjoy this kind of thing, subscribeAnd remember, try to learn something new every day.
