# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a + b > c) && (a + c > b) && (b + c > a)
    p true
  else
    p false
  end
end

puts "Enter side 1 of the triangle:"
side1 = gets.chomp.to_i
puts "Enter side 2 of the triangle:"
side2 = gets.chomp.to_i
puts "Enter side 3 of the triangle:"
side3 = gets.chomp.to_i

valid_triangle?(side1, side2, side3)
