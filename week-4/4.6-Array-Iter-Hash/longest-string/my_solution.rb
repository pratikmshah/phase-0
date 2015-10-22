# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
end

def longest_string(list_of_words)
  if (list_of_words.empty?)
    p nil
  else
    str_count = list_of_words[0]

    list_of_words.each do |var|
      if(var.length > str_count.length)
        str_count = var
      end
    end
    p str_count
  end
end

test1 = ['terminator', 'is', 'a', 'test']
test2 = ['this', 'bc', 'def']

longest_string(test1)
longest_string(test2)