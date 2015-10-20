# Math Methods

# I worked on this challenge [by myself, with: ].


# Your Solution Below
puts "Enter variable 1 below."
var1 = gets.chomp.to_f
puts "Enter variable 2 below."
var2 = gets.chomp.to_f

def add(num_1, num_2)
 p num_1 + num_2
end

def subtract(num_1, num_2)
 p num_1 - num_2
end

def multiply(num_1, num_2)
 p num_1 * num_2
end

def divide(num_1, num_2)
 p num_1 / num_2
end

puts add(var1, var2)
puts subtract(var1, var2)
puts multiply(var1, var2)
puts divide(var1, var2)