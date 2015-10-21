# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if(list_of_nums.empty?)
    p nil
  else
    num_ck = list_of_nums[0]
    list_of_nums.each do |var|
      if(var > num_ck)
        num_ck = var
      end
    end
    p num_ck
  end
end

array_test = [-1, 2, 4]
array_test2 = [50, 25, 80]
array_test3 = [1, 2, 3]

largest_integer(array_test)
largest_integer(array_test2)
largest_integer(array_test3)
