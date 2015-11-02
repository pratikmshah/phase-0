# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array with labels
# Output: a random side
# Steps:
# step1: DEF initialize method and create IF-ELSE
#        IF labels has values then set labels variable
#        ELSE raise and error
# step2: DEF method to return amount of sides
# step3: DEF method to randomly output one value from array

# Initial Solution

class Die
  def initialize(labels)
    if(!labels.empty?)
      @labels = labels
    else
      raise ArgumentError.new("You need at least one side!")
    end
  end

  def sides
    @labels.length
  end

  def roll
    p @labels[rand(@labels.length) - 1]
  end
end

# Tests
# die = Die.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

# counter = 0

# while counter < 10
#   p die.roll
#   counter += 1
# end


# Refactored Solution

class Die
  def initialize(labels)
    if(!labels.empty?)
      @labels = labels
      @sides = labels.length
    else
      raise ArgumentError.new("You need at least one side!")
    end
  end

  attr_reader :labels, :sides

  def roll
    return @labels[rand(@sides) - 1]
  end
end

# Tests
# die = Die.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

# p die.sides

# counter = 0

# while counter < 10
#   p die.roll
#   counter += 1
# end



# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
- There wasn't much to change from the last die class except you had to make sure that the array wasn't empty and you had to use .length
  to get the number of sides. Logic did not change much you needed at least 2 methods one to initalize, one to return a random number.

What does this exercise teach you about making code that is easily changeable or modifiable?
- It is important as when you develop there maybe similar classes which you could just take and modify to your liking. For example, lets say
  I wanted to make a dice class this class would be perfect basis and I can just add and build onto it.

What new methods did you learn when working on this challenge, if any?
- I didn't learn any new methods but I did incorporate some methods to help me out such as empty? to check if the array was indeed empty,
  length to get the # of sides, and rand to generate a random role.

What concepts about classes were you able to solidify in this challenge?
- I guess the basic structure of classes the more and more we create them I am beginning to understand how useful they can become.
  I am also learning to let go of trying to compact everything into just a few lines of code; for example, in my refactoring solution I
  included a second instance variable just for sides to seperate the labels and number of sides so that an object could access both
  the labels on the die and number of sides.

=end