# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  counter = 0

  list_of_integers.each do |element|
    if (element >= lower_bound && element <= upper_bound)
      counter += 1
    end
  end
  p counter
end

test = [1, 2, 3, 4, 5]
test2 = [30, 45, 55, 80]

count_between(test, 2, 4)
count_between(test2, 20, 90)