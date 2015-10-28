=begin
Pseudocode

0. Display menu
- Ask user to pick an action

1. create empty list
- ask user for list name
- get list name
- create empty list via hash

2. add item to list
- ask user for item
- update list via method

3. remove item
- ask user for item to remove
- update list via method

4. update quantities
- ask user for item to update
- ask user for quantities to add
- update list via method

5. print out list
- display the list via method
=end

def display_menu
  list_name = {
    pair: 5,
    apple: 5
  }
  number = 1
  while (number != 0)
    puts "Choose one of the following actions:"
    puts "1: Create a new list."
    puts "2: add item to list."
    puts "3: Remove item from list."
    puts "4: Update quantities."
    puts "5: Print list."
    puts "0: To exit program"

    puts "Choose the number for the action you want to perform: "
    number = gets.chomp.to_i

    if (number == 1)
      puts "What is name of your list: "
      name = gets.chomp.to_s
      list_name = create_list(name)
    elsif (number == 2)
      puts "What is the item: "
      new_item = gets.chomp.to_s
      item_add(new_item, list_name)
    elsif (number == 3)
      puts "What do you want to remove: "
      delete_item = gets.chomp.to_s
      item_remove(delete_item, list_name)
    elsif (number == 4)
      puts "What item do you want to update: "
      item = gets.chomp
      puts "How much do you want to add: "
      qty = gets.chomp.to_i
      update(item, qty, list_name)
    elsif (number == 5)
      print_list(list_name)
    elsif (number == 0)
      break
    else
      puts "Not a valid choice. Please enter another value."
    end
  end
end

# Create empty hash
def create_list(name)
  name = {}
  return name
end

# Ask user for new item to add
def item_add(item, list_name)
  list_name[item]
  list_name[item.to_sym] = 0
end

# Ask user for itemm to remove
def item_remove(item, list_name)
  list_name.delete(item.to_sym)
end

# Ask what 'key'item do you want to update
# Ask 'How many items?"
# Perform update

def update (item_key, item_quantity, list_name)
  list_name[item_key.to_sym] = list_name.fetch(item_key.to_sym) + item_quantity
end

def print_list(list_name)
  puts "---List---"
  list_name.each do |key, value|
    puts "Item: #{key}: #{value}"
  end
end

display_menu()

#REFLECTION
=begin

What did you learn about pseudocode from working on this challenge?
  I think I learned that pseudocode can help you but it an also throw you off. It helps you in a way that you map out a blueprint of the program and you can then you can implement the code piece by piece. It can throw you off when you can't figure out a way to implement your pseudocode into real code like we did when it came to creating a hash we didn't know after creating the new hash how to keep it from losing scope.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  When we debated between this I would have loved to use arrays as they seem pretty easy to implement; however, with arrays it is hard to keep track of a key/value pair like this challenge calls for. The tradeoff with hashes is that you need to be careful tracking the key/value as with keys you can write them with strings or symbols. We chose symbols but didnt realize till like 1 hour later that you needed to convert strings into symbols so that the interpreter can read the keys.

What does a method return?
  The method returns everything you instruct it to depending on your method. For instance, our print list method returned a put to display the key/value pairs from the hash. Our create_list method returned an empty hash. Usually, the last line of code is returned either explicitly or implicitly.

What kind of things can you pass into methods as arguments?
  After doing this challenge it seems like you can pass almost any type of variable, string, hash, array or object to a method. I am not fully aware if there are arguments that cannot be accepted.

How can you pass information between methods?
  You can pass information between methods by simply including as one of the arguemnts. For example in order to constantly update the original hash we had to include it as an argument in the methods ex: method(x, y, hash).

What concepts were solidified in this challenge, and what concepts are still confusing?
- Creating simple methods have become very easy when it comes to setting up a method. The part that is confusing is the scope of the variables as sometimes you are able to access them and other times when you think you can access them the interpretor spits out "undefined locale variable" and then you are figuring out a way to pass the information you need to your method.

=end