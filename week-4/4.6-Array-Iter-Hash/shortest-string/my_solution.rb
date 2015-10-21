# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if (list_of_words.empty?)
    p nil
  else
    str_count = list_of_words[0]

    list_of_words.each do |var|
      if(var.length < str_count.length)
        str_count = var
      end
    end
    p str_count
  end
end

test1 = ['this', 'is', 'a', 'test']
test2 = ['this', 'bc', 'def']

shortest_string(test1)
shortest_string(test2)
