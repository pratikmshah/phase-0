# 4.2 Numbers, Letters and Variables

What does puts do?
- The keyword puts displays result of an argument on the screen and adds a new line after.

What is an integer? What is a float?
- Integers are numbers with no decimal places so -1, 0, 1 and so forth. Floats contain a decimal even if it is even it will still consist of a .0.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
- The difference between a float and integer division is simply an integer ignores remainders while floats displays remainders. For instance if I had wanted to buy a game for $50 and only had $45 I can't buy 90% of the game. This is where integer division comes in handy and in this case it will result in 0. For float, lets say I had 10 pieces of candy and three people (including me) to split it with. I will evenly be able to split 3 pieces per person while the last piece being broken up into thirds. So in total each person could have 3.33 pieces of candy (not the best example but you get the idea).

Hours in a year:
```
p 365 * 24
```

Minutes in a decade:
```
p 365 * 24 * 10 * 60
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- Ruby handles addition and subtraction just like it would in a calculator using operators + and -.  Multiplication is a little different as you have to use * operator. Division has two different operators which depends on what type of values you are using (float or integer). To divide you just use the / operator and if you need to find the remainder you would use the modulus operator %.

What is the difference between integers and floats?
- integers are all negative, zero, and positive numbers that are round numbers. For example -1, 0 and 1 are integers but not 1.01.
Floating point numbers are real numbers in which the precise value is traced till the final decimal place.


What is the difference between integer and float division?
- The difference between integer and float division is that integer division ignores the remainder when returning the output while float will divide the full amount along with the remainder.

What are strings? Why and when would you use them?
- Strings are another name for text; it is a bunch of characters between "". You would use them for numerous reasons for example when retrieving information from a user such as: name, address, email etc... Or even displaying information to the user.

What are local variables? Why and when would you use them?
- local variables are lowercase named variables that are initiated with a value. They can only be used in the are they were declared in such as a method.

How was this challenge? Did you get a good review of some of the basics?
- The challenge was simple but it did give a refreshing review of the basics of numbers, strings and variables.


**LINKS TO THE CHALLENGES**
https://github.com/pratikmshah/phase-0/blob/master/week-4/4.2-Num-Let-Var/basic-math.rb

https://github.com/pratikmshah/phase-0/blob/master/week-4/4.2-Num-Let-Var/defining-variables.rb

https://github.com/pratikmshah/phase-0/blob/master/week-4/4.2-Num-Let-Var/simple-string.rb