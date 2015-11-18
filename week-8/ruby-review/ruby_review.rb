# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
step1: store into VARIABLE the string argument converted to an array
step2: LOOP through the ARRAY
step3: in the LOOP reverse each word and store it into a new VARIABLE
step4: return the VARIABLE
=end

# Initial Solution
def reverse_words(words)
  reversed = words.split(' ')  # split each sentence into array after each space
  reversed.map {|element| element.reverse!} # loop through and
  reversed.join(' ')  # join the array elements with a space between each element
end

# Refactored Solution

#takes the string and splits each word, reverses the array, combines the string and then reverses every word
def reverse_words(words)
  return words.split(' ').reverse.join(' ').reverse
end

# Reflection
=begin
What concepts did you review or learn in this challenge?
- It was pretty basic review but learned how to create variables, methods, and some enumerables. What was funny is
  that as soon as I put my hands on the keyboard to type I paused for a sec asking myself um... how do we do this again?
  But then it all came back.

What is still confusing to you about Ruby?
- The things I am still confused about are inheritance of classes I think there was a brief intro about that but i can't
  remember anything so i'll need to go back and review.

What are you going to study to get more prepared for Phase 1?
- Just going to go through the whole intro course video of ruby online. Then some more practice exercises from ruby review
=end