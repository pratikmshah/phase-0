# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
# What is the input?
Input accepts 3 arguments 1-array, 2-minimum size of array, 3-optional filler value

# What is the output? (i.e. What should the code return?)
Code will output the array up to the minimum size of the array and use filler value if needed.

# What are the steps needed to solve the problem?
Destructive
1. DEF method with three parameter
2. IF minimum size is <= array length return array
3. ELSE add additional elements up to minimum size and use filler value if needed
4. Modify original array permanently

Non-Destructive
1. DEF method with three parameter
2. IF minimum size is <= array length return array
3. ELSE add additional elements up to minimum size and use filler value if needed
4. Return copy of the new array
=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if(min_size <= array.length)
    return array
  else
    counter = min_size - array.length
    while counter > 0
      array << value
      counter -= 1
    end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
    copy = []
    array.each do |element|
    copy << element
    end
  if(min_size <= array.length)
    return copy
  else
    counter = min_size - array.length
    while counter > 0
      copy << value
      counter -= 1
    end
    return copy
  end
end


pad([1,2,3], 6, 'apple')

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if(min_size <= array.length)
    return array
  else
    counter = min_size - array.length
    while counter > 0
      array.push(value)
      counter -= 1
    end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  copy = array.clone
  if(min_size <= array.length)
    return copy
  else
    counter = min_size - array.length
    while counter > 0
      copy.push(value)
      counter -= 1
    end
    return copy
  end
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
- Yes, my  partner and I thought the pseudocode helped a lot as when we were coding we were able to go step by step breaking down the problem

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
- Yes, we were able to break the problem step by step. The problem we faced with our pseudocode  was when our logic did not work with our code. For example, in the non-destructive  method we thought you could just assign a variable to an array and it would copy it but we were wrong and thats when it took us a while to figure out a solution.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
- Our initial solution was successful for the destructive methods; howver, for the non-destructive methods we had trouble finidng a solution as to how we could make a copy of an array the long way. We ended up just cycling through a each loop.

When you refactored, did you find any existing methods in Ruby to clean up your code?
- When we refactored we did find a few methods to help us eliminate tedius work. The clone method alowed us to copy a full array instead of us having to cycle through a loop. Another method called push allowed us to push the padding value at the end of an array even though we used the << operator; it was just another way to do something.

How readable is your solution? Did you and your pair choose descriptive variable names?
- I think its pretty readable. Our variable name was kept to the defaults given to us but for the non-destructive methods we simply created a variable called copy to represent a copy of the original array.

What is the difference between destructive and non-destructive methods in your own words?
- destructive methods will permanently change the original arguments that are passed through.
- non-destructive methods simply creates a copy of the arguments that passed through it and will return the copy; the original is untouched.

=end