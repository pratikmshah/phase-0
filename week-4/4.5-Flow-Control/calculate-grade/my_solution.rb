# Calculate a Grade

# Create a method get_grade that accepts an average in the class and returns the letter grade as a String.

# It should only return one of 'A', 'B', 'C', 'D', and 'F'. Don't worry about + and - grades.

# For example,
# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(grade)
  grade = grade.to_f
  if grade >= 90
    p 'A'
  elsif grade >= 80 && grade < 90
    p 'B'
  elsif grade >= 70 && grade < 80
    p 'C'
  elsif grade >= 60 && grade< 70
    p 'D'
  else
    p 'F'
  end
end

puts "Enter your class average:"
average = gets.chomp
get_grade(average)
