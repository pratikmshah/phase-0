# Good Guess

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def good_guess?(num)
  if num == 42
    return true
  else
    return false
  end
end

puts "Enter an integer from 1 - 50."
guess = gets.chomp.to_i
good_guess?(guess)