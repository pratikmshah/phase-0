# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? array of numbers
# What is the output? the median of the array numbers
# What are the steps needed to solve the problem?
# step1: sort the array using .sort!
# step2: IF array length divided by 2 returns a remainder then return middle array
# step3: ELSE  get length of array and divide by 2 add take that element# and element plus 1 then divide by 2

# 1. Initial Solution
def median(data)
  data.sort!

  if(data.length % 2 != 0)
    p data[(data.length/2).to_i]
  else
    p ((data[data.length/2] + data[(data.length/2) - 1]).to_f / 2)
  end
end

median([4, 4, 5, 5, 6, 6, 6, 7])
median([1, 2, 3, 4, 5, 5, 7])
median([7, 4, 3, 5, 6, 2, 6, 4])
# 3. Refactored Solution



# 4. Reflection