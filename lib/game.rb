class Game
  def initialize
    @board = [[" ", " ", " "],
              [" ", " ", " "],
              [" ", " ", " "]]
  end

  def board
    @board
  end

  def place_figure(x, y, figure)
    xco = x - 1
    yco = y - 1

    if board[yco][xco] == " "
      board[yco][xco] = figure
    else
      return "Sorry that space is already taken"
    end
  end

  def winner?
    if @board == [[" ", " ", " "], ["X", "X", "X"], [" ", " ", " "]]
      return "Well done, you've won!"
    end
  end
end
