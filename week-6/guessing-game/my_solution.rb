# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a guess on the ranomly generated number
# Output: 3 cases guess is high, low, or correct
# Steps:
# step1: Initialize game with random integer
# step2: create METHOD and check user guess to see if it is too high, low or correct
# step3: create METHOD solved? to return true or false based on the last guess


Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  attr_accessor :high, :low, :correct, :guess

  def guess(guess)
    @guess = guess
    if(guess > @answer)
      @high = guess
      p :high
    elsif(guess < @answer)
      @low = guess
      p :low
    else
      @correct = guess
      p :correct
    end
  end

  def solved?
    if(@answer == @guess)
      p true
    else
      p false
    end
  end
end

# ---Refactored Solution---
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if(guess > @answer)
      p :high
    elsif(guess < @answer)
      p :low
    else
      p :correct
    end
  end

  def solved?
    @solve = true if(@answer == @guess)
  end
end

# Tests
game = GuessingGame.new(15)

while !game.solved?
  print "Enter a number between 1-15: "
  answer = gets.chomp.to_i
  game.guess(answer)
  game.solved?
end

# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
- instant variables represent and methods represent the behaviors of a real world object becuase you can think of
  variables as storing the attriubtes of the object while the methods being the actions of and object. For instance
  take human body we have eyes, ears, nose, mouth etc... examples of variables would be eyes color and method would
  be to see, to eat, smell, hear etc...

When should you use instance variables? What do they do for you?
- Instance variables are good for tracking data within a class that objects that are apart of that class can
  access without first having to define them. The instance variables do not lose scope outside of the class as long
  as you have an object that can call on them.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
- flow control is implemented by using if else statements and loops to guide the ruby interpreter on what to do when
  in different scenarios. I only had one issue and it was on how to transfer the user input to the solved? method but I
  found out you could create an instance variable inside of a method and it is still accessable outside.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
- Symbols allow you to represet names and strings all in one which makes it more memory efficient.
  For example when you create a hash ruby has to create a new string object in a different memory location vs
  when you use a symbol which gets created once stored in memory and reusable multiple times over serveral instances.

=end