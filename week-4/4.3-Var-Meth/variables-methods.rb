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