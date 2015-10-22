# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  array = []

  array_1.each do |element|
    array.push(element)
  end

  array_2.each do |element|
    array.push(element)
  end

  p array
end


array1 = [1, 2, 3]
array2 = [4, 5, 6]

array_concat(array1, array2)