---
title: "Self-replicating Python code | Quine"
channel: lexfridman
url: "https://www.youtube.com/watch?v=a-zEbokJAgY"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# Self-replicating Python code | Quine

This Python code, shown above, when executed, generates itself, shown below.This is what's called a quine.It is the kind of self-replicating system which is fascinating both philosophically and technically.The term quine was introduced by Douglas Hofstadter in his book, Geidel Escherbach.The idea of quine is echoes of self-replication in biological cells,

where the cell contains data in the form of DNA and code in the form of biological processeswhich replicate that DNA. In the same way, the computational self-replication of a quinecontains two elements. One is the code that performs the replication and two is the datathat contains all the raw materials for performing the replication process. So like I said, mostquines have a data part and a code part. So let's look at this elegant Python quine. The data part

is the string of the program and the code part is the print statement that prints that program.So let's look at a basic example of the structure. The string is test percent r, or percent r is therepr function that returns a printable representation of the object that's passed.So when we execute this command of assigning the string to the variable s,and then print the string s after passing itself to itself in a repr version of itself.

And so the output of this code is test test percent r with the test percent r in quotes,which is the repr version of the argument.Now we can move back to our quine with the same exact structure of a string,but this time the string contains also the print statement with a double percent sign,which when printed results in a single percent sign.

So this code, once again, after you pass the wrapper version of the string to itself,results in a print of the entirety of the code.The recursive nature of this self-replicating piece of code has the beauty and the powerthat echoes the process of biological cell replication.I should briefly mention that there's a lot of ways of creating quines.

The one I showed is the one I believe is the most elegant.There's also cheating ways of creating quines,which is, first of all, an empty program in many programming languages,including Python, is a quine itself.Nothingness, in a way, is forever effectively replicating itself.

Also, another obvious way is to put the code of the program into a fileand then to print the contents of the file in which the code resides.Now this is actually officially considered to be cheating and not allowed to be in aquine.The quine has to be self-sustained.

Now let me wrap up this video with the idea of an intron, which is code that you can injectwithin a quine that will replicate as part of the replication procedure, but does notactually contribute directly to the function of the quine.So it rides along for free, like a virus or a non-functional part of the genome in a DNA,without directly contributing to the replication of the code.

Now this particular piece of code does more than just provide an intron.It takes the input from the user and adds that as an intron into the coin.Now the exact function is used here for brevity.So let's run this code.When we run it, it's waiting for the user input.

If we just press enter, it generates the code itself.so it's a proper quine. If we run it again and provide input like we live in a simulation,what you see is that the variable t now has a we live in a simulation string attached to it,and the entire program remains a proper quine. So if we copy it and run this program,it waits for the input. Now if we keep the same input it generates the quine again successfully.

Now it can run the same kind of quine with the WeLive in a simulation and instead provide a newtext 42. The resulting output is a quine as well with the variable t now assigned the number 42.Now to me quines and introns make me think about the source code of our own life here on earth.And so I hope you may find this interesting and beautiful as I do.I may very well make a few more videos about quines, like multi-quines, polygon quines,

quine relays, and other things that I find interesting in the space of computer science,mathematics, physics, artificial intelligence, machine learning, and even psychology, history,philosophy, biology, chemistry, and so on.so if you enjoy this kind of thing consider subscribing and remember try to learn somethingnew every day

