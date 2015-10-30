# Numbers to Commas Solo Challenge

# I spent [5.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? -  Positive Integer
# What is the output? - Should out put integer in comma notation
# What are the steps needed to solve the problem?

=begin
step 1: create a VAR and assign it to integer argument that was passed in and convert it to string
step 2: create an empty ARRAY and loop through the string in reverse order and copy into empty ARRAY in reverse order
step 3: loop through the array checking IF counter is divisible by 3 then add a comma to the number
step 4: Reverse the array order again so your back at the original number with the comma
step 5: return the array in string form

=end

# 1. Initial Solution
def separate_comma(number)
  if(number < 1000)        # if number is 3 digits return number else move on to computation
    return number.to_s
  else
    # create variables one to hold copy of argument being passed, empty integer array,
    # empty number string, a counter for array value starting backwards, and an ordinary counter
    num_copy = number.to_s
    int_a = []
    num_string = ''
    counter = num_copy.length - 1
    i = 0
    while i < num_copy.length        # loop through string by character and add a char to each an element in array
      int_a[counter] = num_copy[i]
      counter -= 1                   # while counter to control array element decrements a counter to break loop increm
      i += 1
    end

    # loop through the reversed integer array and check to see if the index value is divisible by 3
    # and before processing check there is another element that exists after
    # in order to find out to add a comma or not.
    int_a.each_with_index do |element, index|
      if (((index + 1) % 3 == 0) && (index+1 < int_a.length))
        num_string = "#{num_string}#{element},"
      else
        num_string = "#{num_string}#{element}"
      end
    end

    counter = num_string.length - 1    # reset counters
    i = 0
    int_a.clear
    while i < num_string.length         # reverse the array back to how it was with the commas included
      int_a[counter] = num_string[i]
      counter -= 1
      i += 1
    end

    num_string = ''                            # reset counters
    int_a.each do |element|
      num_string = "#{num_string}#{element}"   # iterate through array and form the string with commas
    end

    return num_string
  end
end

# 2. Refactored Solution ----------------------------------------------------

def separate_comma(number)
  if(number < 1000)
    return number.to_s
  else
    # convert to string and reverse, then send characters into array
    # clear the string before proceeding
    num_string = number.to_s.reverse
    int_a = num_string.chars
    num_string.clear

    # loop through and insert commas
    int_a.each_with_index do |element, index|
      if (((index + 1) % 3 == 0) && (index+1 < int_a.length))
        num_string.concat("#{element},")
      else
        num_string.concat("#{element}")
      end
    end

    num_string.reverse!   # reverse string back to original

    return num_string
  end
end

# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
  It was pretty hard for me to figure out what to do especially without using any methods which is why I have 4 loops in my first iteration. I tried to figure out a way to concatenate a comma every 3 digits in an array but it was hard to do going left to right on an array [1000] on the integer when comma placing starts right to left [0001]. So I decided to reverse the array add in the commas and reverse it back. It ended up long and messy.

Was your pseudocode effective in helping you build a successful initial solution?
  Pseudocode was good to write down to show me what steps I needed to acomplish. Also, pseudocode was a great way to see in each step what result I wanted. So it was also a double check for me; for example, if I needed the string to be reversed after I coded I could print out and double check the result matched with what the pseduocode wanted.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them?
  I used a few such as reverse, chars, concat and clear. Reverse helped me a lot cutting out majority of the loops from original code. Difficulties I had when implemeting methods was reading the documentation and trying to implemnet that into my own code. The docs for some of the complicated methods are hard to understand. I tried to use scan for strings which would break down the string according to the pattern you specify; but it didn't work for all use cases so I scrapped it as well as method join also.

Did it/they significantly change the way your code works? If so, how?
  I wouldn't say it changed the way my code works but it did significanlty reduce the amount of work I needed to do. The basic transfer of the string to the array had to be done and looped through in order to add the comma. I couldn't figure out how to do it without the iteration of the array.

How did you initially iterate through the data structure?
  The initial iteration was pretty long I had to copy the string in reverse order to a new array. Then I had to loop through the array and add in the commas and keep concatinating the string. Next, I had to reverse the array back to its original and then cycle through again and push each element into one big string

Do you feel your refactored solution is more readable than your initial solution? Why?
  Definitely, the methods are so descriptive and tell the reader exactly what they do. Reverse, concat and clear explicitly state what they will do. If I didn't have comments through the first code it would be hard for someone to understand what was going on in the code. Plus there were so many uncecessary variables.
=end


















