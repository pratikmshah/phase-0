

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum of entries in array
# Steps to solve the problem.


# Use each-loop to find sum of entries.

# Add it up!

# 1. total initial solution
def total(some_array)
  sum = 0
  some_array.each do |element|
  sum += element
  end
  p sum
end

total([1,2,4,5,8]) # 20
total([-5,7,20,-45]) # -23
# 3. total refactored solution
def total(some_array)
  p some_array.inject(:+)
end

total([1,2,4,5,8]) # 20
total([-5,7,20,-45]) # -23

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: sentence
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(string_array)
  p string_array.inject(:+).capitalize + "."
end

array1 =["Hi","Bye","Splat!"]
p sentence_maker(array1)


# 6. sentence_maker refactored solution

def sentence_maker(string_array)

  p string_array.join(" ").capitalize + "."
end

array1 =["Hi","Bye","Splat!"]
p sentence_maker(array1)