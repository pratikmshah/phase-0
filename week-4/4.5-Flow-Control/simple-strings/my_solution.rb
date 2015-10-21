# Simple Substrings

# I worked on this challenge [by myself, with: ].

# Your Solution Below

def welcome(address)
  if(address.include?("CA"))
    p "Welcome to California"
  else
    p "You should move to California"
  end
end

puts "Please enter your full address (ex: 1 Hacker Way, Menlo Park, CA 94025)"
user_address = gets.chomp.to_s
welcome(user_address)