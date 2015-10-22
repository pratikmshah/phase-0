# Factorial

# I worked on this challenge [by myself, with: Chris Gomez ].

# Your Solution Below
=begin
PSEDUDOCODE

get user input

3 cases
case 1 if n < 0
case 2 if n = 0
case 3 if n >= 1

case 1 output => undefinded
case 2 output => 1
case 3 output => factorial! loop

display factorial
=end

def factorial(num)
  #case statements
  if (num < 0)
    p "Undefined"
  elsif (num == 0)
    p 1
  else
    prod = 1
    counter = 1
    while counter <= num
      prod *= counter
      counter += 1
    end
    p prod
  end
end

test1 = 5
test2 = -1
test3 = 0

factorial(test1)
factorial(test2)
factorial(test3)