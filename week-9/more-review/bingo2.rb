# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
=begin
input: two dimentional array
output: return T/F if bingo

DEF CONSTRUCTOR
  board value
  boolean bingo value
END

DEF horizontal
store value in local var
IF temp val equals array values in index 0, 1, 2, 3, or 4
  boolean value equals true
END

# rest on paper
=end

# Solution
class BingoScorer
  
  def initialize(board)
    @board = board
    @bingo = false
    @check = ['x', 'x', 'x', 'x', 'x']
  end
  
  def bingo?
    horizontal()
    vertical()
    left_diagonal()
    right_diagonal()
    return @bingo
  end
  
  private #================= PRIVATE===============
  
  def horizontal()
    @board.each { |row| @bingo = true if(@check == row) }
  end
  
  def vertical()
    col, row = 0, 0
    temp = []
    while(row < @check.length)
      while(col < @check.length)
        temp << @board[col][row]
        col += 1
      end
      if(temp == @check)
        @bingo = true
        break
      else
        row += 1
        col = 0
        temp.clear
      end
    end
  end
  
  def left_diagonal()
    i = 0
    temp = []
    while(i < @check.length)
      temp << @board[i][i]
      i += 1
    end
    if(temp == @check)
      @bingo = true
    end
  end
  
  def right_diagonal()
    col, row = 0, 4
    temp = []
    while(col < @check.length)
      temp << @board[col][row]
      col += 1
      row -= 1
    end
    if(temp == @check)
      @bingo = true
    end
  end
end


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]

left = [['x', 44, 71, 8, 88],
        [22, 'x', 75, 65, 73],
        [83, 85, 'x', 89, 57],
        [25, 31, 96, 'x', 51],
        [75, 70, 54, 80, 'x']]

right = [[47, 44, 71, 8, 'x'],
         [22, 69, 75, 'x', 73],
         [83, 85, 'x', 89, 57],
         [25, 'x', 96, 68, 51],
         ['x', 70, 54, 80, 83]]
  
board1 = BingoScorer.new(horizontal)
board2 = BingoScorer.new(vertical)
board3 = BingoScorer.new(left)
board4 = BingoScorer.new(right)

p board1.bingo?
p board2.bingo?
p board3.bingo?
p board4.bingo?
  
# Reflection
