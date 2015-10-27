=begin
Pseudo Code

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
  else
    puts "Not a valid choice. PLease try again."
  end
  end
end

def create_list(name)
  name = {}
  return name
end

# Ask user for new item to add
def item_add(item, list_name)
  list_name[item]
end

# Ask user for itemm to remove
def item_remove(item, list_name)
  list_name.delete(item)
end

# Ask what 'key'item do you want to update
# Ask 'How many items?"
# Perform update

def update (item_key, item_quantity, list_name)
  puts list_name
  list_name[item_key.to_sym] = list_name.fetch(item_key.to_sym) + item_quantity
end

def print_list(list_name)
  puts "List: "
  puts " ------"

  list_name.each do |key, value|
    puts "Item: #{key}, Qty: #{value}"
    puts "----"
  end
end
display_menu