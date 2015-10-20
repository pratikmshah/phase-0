# 4.3: Full Name Greeting

# get user input
puts 'What is your first name?'
first_name = gets.chomp.capitalize

puts 'What is your middle name?'
middle_name = gets.chomp.capitalize

puts 'What is your last name?'
last_name = gets.chomp.capitalize

# greet user
puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

#4.3 Bigger, Better Favorite Number
puts 'Enter your favorite number.'
fav_num = gets.chomp
fav_num = fav_num.to_i + 1
puts 'I have a bigger better number than you with ' + fav_num.to_s

# *************** REFLECTION ***********************
# How do you define a local variable?
#   To define a local variable the name should be lowercase and you must assign a value (declaration) to the variable.

# How do you define a method?
#   To define a method you must use start the method by using keyword def. Following the def keyword you specify a descriptive name for your method and then, if needed, give it parameters that it will accept. After your statements you close the method with the end keyword.

# What is the difference between a local variable and a method?
#  The difference between a local variable and a method is that a local variable is only used and accessable in the section of the code it
#   was initialized at; such as a method. A method allows you to perform tasks over and over again so that you do not have to repeat
#   your code to perform the same calculations. A method takes in variables known as parameters in which it can use in the calculations.
#   It can also return values back.


# How do you run a ruby program from the command line?
#   To run ruby program from command line you type "ruby <file-name>.rb"

# How do you run an RSpec file from the command line?
#   To run rspec in the command line you write "rspec <file-name>.rb". It is best to name your file name with spec in it to show it is a
#   test file.

# What was confusing about this material? What made sense?
#   The two confusing parts of the material was getting the hang of understanding that when you retrieve a number from the user it is a string and in order to calculate that input you have to convert from string to interger/float. The other part I had to get used to was using the p keyword when testing on rspec as I spent quite some time on the address challenge figuring out why my tests came back as failed despite having an identical output. The rest of the material made sense but I'm still cautious when typing anything down.


# LINKS BELOW
# https://github.com/pratikmshah/phase-0/blob/master/week-4/4.3-Var-Meth/address/my_solution.rb

# https://github.com/pratikmshah/phase-0/blob/master/week-4/4.3-Var-Meth/math/my_solution.rb