# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: a random roll displaying a number on the die
# Steps:
# 1. create an instance variable and initialize it to sides and check for error.
# 2. define a method to return variable sides.
# 3. create a roll method that will randomly display a side on the die.

# 1. Initial Solution

class Die
  def initialize(sides)
    if(sides < 1)
      raise ArgumentError.new("Only numbers 1 or greater allowed")
    else
      @sides = sides
    end
  end

  def sides
    p @sides
  end

  def roll
    p rand(@sides) + 1
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    if(sides < 1)
      raise ArgumentError.new("Only numbers 1 or greater allowed")
    else
      @sides = sides
    end
  end

  attr_accessor :sides

  def roll
    p rand(@sides) + 1
  end
end


# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
  An argument error is an exception that occurs when incorrect argument values are passed, used, or accessed. For example, in this program we used it because you cannot have 0 or negative sides on a die.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  I didn't use many new methods but I used raise keyword along with the ArguementError and random method. I had trouble with the random function as I was putting the 1 inside the random method when it was supposed to actually go outside to get a minimum value of 1.  The ArguementError message was correct but when I tested it out I thought my program was giving me an error for using it incorrectly but in reality I was using it right as the error I was getting was the one I wanted lol.

What is a Ruby class?
  A ruby class is like a blue print for objects. The class houses what instance variables and methods the object will be able to use when invoked.

Why would you use a Ruby class?
  A ruby class allows you to collect several methods and variables into one big package that allows any instance of the class to be able to use vast amount of resources the class gives it. For example, the math class houses majority a vast amount of methods to calculate square root, PI, raising to powers etc... you could create one object that could access all of these methods and variables at your disposal instead of having to create the methods on your own.

What is the difference between a local variable and an instance variable?
  The locale variable is invoked and accessed only in a specific area of the code; its scope is lossed if acccessed outside of area it was invoked unless it is passed. Instance variable are variables in a class in which each object instance of that class has a copy of its own. Each object can have different values for their instance variables.

Where can an instance variable be used?
  An instance variable can be used inside of the class and accessed by any object of that class.

=end