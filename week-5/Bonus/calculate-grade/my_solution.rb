# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? array of grades
# What is the output? a letter grade
# What are the steps needed to solve the problem?
# step1: cycle through values in the array and sum them up
# step2: while looping check if score is < or > than 0/100 and set them to 0/100 IF they are
# step3: Use CASE statement and go through

# 1. Initial Solution
def get_grade(scores)
  grade = scores.inject do |sum, element|
    if (element < 0)
      element = 0
    elsif (element > 100)
      element = 100
    end
    sum + element
  end

  grade_avg = grade / scores.length

  case grade_avg
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    else
      return "F"
  end
end

get_grade([100, 95, 90])
get_grade([85, 95, 75])
get_grade([75, 72, 71])
get_grade([69, 65, 60])
get_grade([50, 59, 62])
get_grade([101, 0, -5])
# 3. Refactored Solution



# 4. Reflection