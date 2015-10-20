# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => it says it is line 170 but it is actually line 15-16 that is the prolem
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input
# 5. Where is the error in the code?
# => The error is after the puts statement
# 6. Why did the interpreter give you this error?
# => the while loop is missing an end  to close the loop

# --- error -------------------------------------------------------

south_park = "Colorodo"

# 1. What is the line number where the error occurs?
# => Line 36
# 2. What is the type of error message?
# => It is a main object error
# 3. What additional information does the interpreter provide about this type of error?
# => It says it is an undefined local variable or method `south_park' for main
# 4. Where is the error in the code?
# => Line 36 after south_park variable
# 5. Why did the interpreter give you this error?
# => we specified a local variable without initializing it.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => It is a main object error
# 3. What additional information does the interpreter provide about this type of error?
# => The interperter states that we have a undefined method called `cartman' for main
# 4. Where is the error in the code?
# => Line 51 before cartman and after
# 5. Why did the interpreter give you this error?
# => We defined a function without using def and end

# --- error -------------------------------------------------------

def cartmans_phrase()
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => Line 67 or 71 depending on what the method is for or if you are setting his phrase or he has a default phrase
# 2. What is the type of error message?
# => It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
# => It says `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => Depending on what you do it can be line 67 or 71. Line 67 if you want to pass an argument and then have it display
# => the new string or line 71 in which case you do not want to the method to accept an arguement but display that one
# => string
# 5. Why did the interpreter give you this error?
# => I going to say because the method is not supposed to accept an arugment but in line 71 we are passing an argument to
# => the method

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Revenge is so very, very sweet")

# 1. What is the line number where the error occurs?
# => Line 89
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => In line 93 it is missing a parameter
# 5. Why did the interpreter give you this error?
# => We need to pass an arguement string to use this method



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Butters')

# 1. What is the line number where the error occurs?
# => 110
# 2. What is the type of error message?
# => Arguement error
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => Line 114 after the first parameter string
# 5. Why did the interpreter give you this error?
# => The method takes two arguements and we are only inputing one.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 129
# 2. What is the type of error message?
# => Type error
# 3. What additional information does the interpreter provide about this type of error?
# => in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => the number 5 and * operator
# 5. Why did the interpreter give you this error?
# => You cant multiply a number string times. It should be reversed string * 5

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => 144
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => in `/': divided by 0
# 4. Where is the error in the code?
# => Line 144 the number 0
# 5. Why did the interpreter give you this error?
# => You can't divide by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay"

# 1. What is the line number where the error occurs?
# => 160
# 2. What is the type of error message?
# => Load error
# 3. What additional information does the interpreter provide about this type of error?
# => n `require_relative': cannot load such file -- /Users/Pratik/Documents/Pratik/DevBootcamp/phase-0/week-4/4.4-Analyze-Errors/cartmans_essay.md
# 4. Where is the error in the code?
# => the file name or path in between the "" and the file name itself
# 5. Why did the interpreter give you this error?
# => It could be for various reasons: the file path is wrong, the file does not exist or the file name is incorrect


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => The error that was most difficult was the last one where I didn't know if the file path was wrong, the file name
# => or that the file did not exist. I tried to play around and got it work. There were two errors first file did not
# => exist and file name was incorrect; it should not include the extention
# How did you figure out what the issue with the error was?
# => I had a process. I ran the interpreter then read and evaluated the error. Went back to the code and looked
# => over an thought about what adjustment I would make to fix the code. I'd make the adjustment and repeat process
# => if it failed to fix the problem
# Were you able to determine why each error message happened based on the code?
# => Yes, for the most part as the errors here were of basic nature but I could see why I would need to get
# => into the hang of reading the interpreter as in larger projects the error may be on line 50 but actually in line
# => 2000.
# When you encounter errors in your future code, what process will you follow to help you debug?
# => I think the process I will take will still be the same as I am doing right now; however, as I practice more
# => I will eventually adapt to a more sequential and logic apporoch in which I might have to incorporate
# => researching; for example, I was using a method incorrectly or for the wrong purpose. In time I am sure of it that
# => my debugging process may take hours and that this approach I use right now will not be sufficient.
