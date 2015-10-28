# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin
1. create an empty hash preset to 0
2. iterate over the array and collect it into a new hash.
key is each entry in array and then value in new hash is frequency
3. create result array and then iterate the hash
set locale variable for highest frequency and set it to zero
Case 1 - iterate throught he hash IF value is < highest do nothing
Case 2 - IF value is = to highest freq push the key into result array
Case 3 - IF value is greater than highest freq number. clear result array and then push key into the result array.

Version 2 of P-code:
set variable
copy array that is passed in
sort array
create new empty hash
iterate through (copy of) array,
case 1 - if element = hash Key, add +1 to value of hash
case 2 - else: create new hash key (using element as key), set val = 1,
create new result array
iterate through hash,
check for most frequent values & push into array
case 1 -
case 2 -

=end
# What is the input? array of numbers or strings
# What is the output? result array with the mode
# What are the steps needed to solve the problem? see above

# 1. Initial Solution
def mode(array)
  sort_hash = Hash.new(0)

  array.each do |element|
    sort_hash[element] += 1
  end

  result = []
  highest_freq = 0
  p sort_hash
  sort_hash.each_key do |key|
    if (sort_hash[key] == highest_freq)
      result << key
    elsif (sort_hash[key] > highest_freq)
      result.clear
      result << key
      highest_freq = sort_hash[key]
    end
  end
  p result
end

# 3. Refactored Solution
def mode(array)
  sort_hash = Hash.new(0)

  array.each do |element|
    sort_hash[element] += 1
  end

  highest_freq = sort_hash.values.max
  result = sort_hash.select { |k, v| v == highest_freq}.keys
end

mode([1, 2, 3, 1, 3, 3, 2, 3])
mode(["who", "what", "where", "who"])
mode([1.5, -1, 1, 1.5])

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
  We used arrays and hashes to store and manipulate the data. We used arrays to store the result and output the data while we used hash to keep track of the key and the frequency value.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  I was having a real tough time breaking this problem down and implementing my pseudocode. My pair had an excelent breakdown of the problem but I was struggling. Pseudocode is simple to write but when you try to implement it thats where the challenge becomes when you don't know how to write the code.

What issues/successes did you run into when translating your pseudocode to code?
  The only issue we had in translating the pseudocode was with the if else statments and forgeting to use our freq  variable.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were
they difficult to implement?
  We used the each_key method to cycle through the key and compare the value with our highest frequency value. When refactoring we were able to use the select method and max to help us first get the highest frequency and then store into result all the keys that equaled to the highest frequency variable. Its hard to implement because the ruby docs is written in another language and sometimes is hard to understand how the methods are supposed to be used.

=end