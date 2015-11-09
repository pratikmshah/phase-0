# Your Names
# 1) Malia Lehrer
# 2) Pratik Shah

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity) # take in 2 args string & int

  # hash called library with 3 keys and int values
  library = {
    "cookie" => 1,
    "cake" =>  5,
    "pie" => 7
  }
  error_counter = 3  # counter initialized to 3

  #iterate through hash
  library.each do |food|
    if library[food] != library[item_to_make]  # check to see if item to make is not in the hash
      p error_counter += -1                    # decrement counter by 1
    end
  end

  if error_counter > 0  # if counter is > 0 raise error
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0] #serving-size of that item is the item's value--returns value
  serving_size_mod = order_quantity % serving_size #returns a modulus of more than 0 if your order is not divisible by your serving size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" #Says how many orders to make of that thing
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE" #Lets you know that your order will feed more people than you've requested
  end
end


# REFACTOR
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.has_key?(item_to_make)
#   end

  # declare variables
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  leftover = ""
  qty = 0

  # loop through hash and see what else you can make with the leftovers
  library.each do |k,v|
    if(serving_size_mod % v == 0)
      leftover = k
      qty = serving_size_mod / v
    end
  end

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"  # display if no ingredients remain
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}; you have #{serving_size_mod} hungry person. May we suggest ordering #{qty} #{leftover}?" # display if ingredients remain and suggest any items to make with leftovers
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?
  - Its important to create clean code and especially to comment on what you are doing so that future people who take over
    your project will be able to understand the what and why you did something.

Did you learn any new methods? What did you learn about them?
  - I didn't learn any new methods but we learned that you can create a statement and then put an if statement after it
    and it will only execute if the condition is true.

What did you learn about accessing data in hashes?
  - I would have to say at this point I did not learn anything new; however, I did notice that Its much easier to read
    hashes when they are listed vertically vs horizontally.

What concepts were solidified when working through this challenge?
  - There were several concepts that were were important in this challenge but the most important one I would have to
    say is the use of comments. Although this was a small program, imagine a 10,000 line code with no comments. It would
    take a new person a while just to try and deconstruct all the code. Comments help by providing an explanation on what
    the method or variable will do and is there for.

=end