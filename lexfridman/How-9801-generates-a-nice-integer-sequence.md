---
title: "How 9801 generates a nice integer sequence"
channel: lexfridman
url: "https://www.youtube.com/watch?v=waYr2J15uUc"
language: en
transcription: whisper (mlx-community/whisper-large-v3-mlx)
---

# How 9801 generates a nice integer sequence

The fraction 1 over 99 squared generates as its decimals something that looks a lot like the non-negative integers.Why is that?Showing this fraction as this kind of sum may give you a hint.But let's take a look further.Let's use this geometric series here that holds true when the absolute value of x is less than 1.

1 over 1 minus x is equal to 1 plus x plus x squared plus x cubed and so on.Taking the derivative of both sides, the equality still holds true,resulting in 1 over 1 minus x squared equals 1 plus 2x plus 3x squared plus 4x cubed and so on.Now here's how we get back to the magical fraction that generates something very close to the non-negative integers.We plug in 1 over 100 into x. The result on the left hand side is our fraction, 1 over 99 squared.

And on the right hand side, the sum 1 over 100 squared plus 2 over 100 cubed plus 3 over 100to the power of 4 and so on. And when we take the sum, we get that nice sequence of 0, 1, 2, 3,4 and so on that we saw before. Now if we return to the derivative of the geometric series thatwe saw before and plug in x equals to 1 over 100 we get the fraction that we started the video withbut we can actually change the number of padding zeros in the decimal sequence that's generated

by changing the value of x. For x of 1 over 10 the fraction is 1 over 9 squared or 1 over 81and the padding is less. For x of 1 over 1000, the fraction is 1 over 999 squared,and the padding is greater. And you can arbitrarily increase the denominator of x bymultiples of 10 to increase the padding on the resulting decimal sequence. So there you have it.There's a little bit of math that shows how a strange little fraction can generate

a beautiful decimal sequence. You may have noticed that in this case, the number 98 is missing.The number 98 is not missing in the underlying summation. But since we're doing base 10 arithmetic,eventually the numbers overflow, resulting in a decimal sequence that's missing the number 98before it starts repeating. So while the underlying summation includes the non-negative integers,the resulting representation of the number in decimal form in base 10 notation actually

is missing the number 98 and is actually a repeating decimal. I hope you enjoyed theselittle videos. They're easy and fun for me to make and allow me to share some basic and advancedideas in mathematics, computer science, physics, machine learning, and also into the softer sciencesof psychology, history, philosophy, and so on.I look forward to sharing these with you.

And remember, try to learn something new every day.
