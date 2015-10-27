# Research Methods

# I spent [] hours on this challenge.

# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {
  "Evi" => 6,
  "Ditto" => 3,
  "Hoobie" => 3,
  "George" => 12,
  "Bogart" => 4,
  "Poly" => 4,
  "Annabelle" => 0
}
=begin
create method and accept 2 arguments, an array and a string(letter
create an array and assign it the source value also convert to string
create array to push matching values
cycle through the source and use method to lookup the string

=end
# Person 1's solution
def my_array_finding_method(source, search_word)
  copy = source.map {|element| element.to_s}
  match = []
  copy.each do |element|
    if element.include?(search_word)
      match << element
    end
  end
  p match
end

def my_hash_finding_method(source, search_age)
  search_result = []
  result = source.select {|key, value| value == search_age}
  result.each {|key, value| search_result << key}
  p search_result
end

# Identify and describe the Ruby method(s) you implemented.
=begin
.map = is a method that copies an array and returns a new array with the same exact size as the original array. In addition each element is also located in the same position of the original array. It basically makes a perfect clone of the original array. To use simply use the dot operator and then map on an array.


.include? is a method that tests for a boolean value.  If it evaluates to true, then it will run the line of code
underneath it.  If not, then it will do nothing.

.select is a method used for comparisons.  It will select all values that satisfy the comparison you ask for, then return them in a hash.

For finding these methods, we found it easier to simply google what we wanted our code to do.  Personally, I feel the ruby docs is not very user friendly.
=end



# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
