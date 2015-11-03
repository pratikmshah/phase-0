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


# Initial Solution

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

# Tests
game = GuessingGame.new(15)

while !game.solved?
  puts "Enter a number between "

end
game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

# Refactored Solution






# Reflection
