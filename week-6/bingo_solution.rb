# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.
# Initialize a new instance of the BingoBoard using the provided board array.
# Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
# Create a method to check whether that column has that number in the existing bingo_board.
# If the number is in the column, replace it with an "X".
# Display the new board to the console (Make it pretty).

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
- Define a METHOD taking no variables
- create INSTANCE VAR and assign it a 2 element array where first element is random letter and second is random number
- RETURN variable

# Check the called column for the number called.
- Define METHOD board that takes no arguments
- GET the letter to figure out what column to check
- iterate through the column row by row and check IF number matches on board
- if there is a match replace the ARRAY ELEMENT with X character

# If the number is in the column, replace with an 'x'
- Define METHOD that takes no argument
- Mark the board by assigning element with X char if values are a match from the check method (previous method)

# Display a column to the console
- Define METHOD that take a char argument
- find char to match and set the column index to the char's index value
- loop through row incrementing by one and keep column constant
- print out values to the console

# Display the board to the console (prettily)
- Define method that takes no arguments
- LOOP through string BINGO by one character and display above each numbered column
- LOOP through the bingo board 1 row at a time an display number by number
- display should be a square grid

=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board # assign argument board to instance variable
    @letter = "BINGO"    # store string into instance variable for later use in other methods
  end

  def call_num()
    @select = [@letter[rand(4)], (rand(99) + 1)]  # return and array with first value as letter and second a number
    puts "#{@select[0]}#{@select[1]}"
    return @select
  end

  def board_match()
    if(@select[0] == "B")       # find column value and get index
      col = 0
    elsif (@select[0] == "I")
      col = 1
    elsif (@select[0] == "N")
      col = 2
    elsif (@select[0] == "G")
      col = 3
    else
      col = 4
    end

    row = 0
    while row < 5
      if(@bingo_board[row][col] == @select[1])    # loop through column trying to find value match
        @mark_row = row                           # if match is found save row & column and set match to true
        @mark_column = col
        @match = true
      end
      row += 1
    end
  end

  def mark_board()
    if(@match)
      @bingo_board[@mark_row][@mark_column] = 'X'     # mark the element with x if there is a match
      @match = false
    end
  end

  def print_column(column)      # retrieve char value and set column to value's index
    if(column == "B")
      col = 0
    elsif (column == "I")
      col = 1
    elsif (column == "N")
      col = 2
    elsif (column == "G")
      col = 3
    else
      col = 4
    end

    row = 0
    puts "#{column}"
    while row < 5
      puts "#{@bingo_board[row][col]}"      #loop through and print column specific values
      row += 1
    end
  end

  def print_board()
    @letter.each_char { |x| print " #{x} " } # display BINGO title
    puts
    @bingo_board.each do |row|  # loop through board starting with the first row
      row.each do |column|      # loop through row column and display each number
        if(column.kind_of?(String))  # check if there is an X in the character if yes print it
          print " #{column}"
        elsif(column < 10)         # if the number is single add a 0 in front of it
          print 0
          print column
        else
          print column
        end
        print " "
      end
      puts  # new line
    end
    puts # new line for when next display runs
  end
end

# ===Refactored Solution===

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ["B", "I", "N", "G", "O"]
    @number = nil
  end

  def call_num()
    @number = rand(1..100)
    @select = [@letter.sample, @number]  # return an array with first value as letter and second a number
    puts "#{@select[0]}#{@select[1]}"
    puts
  end

  def board_match()
    array = @bingo_board                                       # assign to new locale variable to make reading easier
    num_exists = array.flatten.include?(@select[1])            # convert into single array and check if number exists

    if(num_exists)                                                      # only check if number exists
      row = array.index(array.detect {|num| num.include?(@select[1])})  # calculate the row index by searching for number in bingo board
      col = @letter.find_index(@select[0])                              # calculate the column index by finding the index in letter arrays
      if(array[row].find_index(@select[1]) == col)                      # if the value is found on the bingo board and index matches with index in letters array
        @bingo_board[row][col] = ' X'                                   # we have a match replace element value with X char
      end
    end
  end

  def print_column(column)
    col = @letter.find_index(column)    # Find the column to print out
    row = 0
    puts "#{column}"
    while row < 5                       # loop through row and stop after 5
      puts "#{@bingo_board[row][col]}"
      row += 1
    end
    puts
  end

  def print_board()
    @letter.each { |x| print " #{x} " } # display BINGO title
    puts
    @bingo_board.each do |row|  # loop through board starting with the first row
      row.each do |column|      # loop through row column and display each number
        if(column.to_s.size < 2 && column.to_s != 'X')    # if the column is single char format a 0 in front
          print "0#{column}"
        else
          print "#{column}"
        end
        print " "
      end
      puts  # new line
    end
    puts # new line for when next display runs
  end
 end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.print_board
new_game.call_num
new_game.board_match
new_game.print_board
new_game.print_column("B")

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
- It was challenging to pseudocode this because It was hard to visualize the problem without writing code. I had take it one method at a time.
  then code then back to pseudocoding. My style is different from majority of people I just like to write a list of steps  and capitalize any keywords

What are the benefits of using a class for this challenge?
- The bingo board is perfect to use a class for becuase not only are all of the methods related but they all require access to the same data (the bingo board)
  utilizing a class to create a board, mark it, look for a match makes logicaly sense.

How can you access coordinates in a nested array?
- There are plenty of ways and in this challenge I used a few different methods. One way is to enumerate through the outter array then create another array
  inside of the first loop and loop through the inner arrays one at a time; this is was done using each method. Another method I used was in the print a column
  method where I found the column to print and used a while loop to loop through that column.

What methods did you use to access and modify the array?
- Some of the important methods that I used to access the arrays were sample, find_index, detect and include?
- I did not modify array using methods. I just used the assignment operator.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
- The most important method I learned in this challenge was the find_index method to find the index number of the element in the array. Its purpose is to look up
  the element value in the array and return its index number. It is called by array_name.find_index(value_to_look_up)

How did you determine what should be an instance variable versus a local variable?
- I said if other methods in the class needed to access or edit the variable then it would be a class variable. If the variable was only to be used by the method
  then I used a local variable

What do you feel is most improved in your refactored solution?
- I think I like my refactored solution. For my refactored code I was just trying to incorporate as many methods as I can as a learning experience I didn't focus
  much on trying to reduce the amount of lines of code. My biggest refacotred method was the board_match method where I used a lot of new methods to see if the
  randomly generated number matched a value on the board.

=end