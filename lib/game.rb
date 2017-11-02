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
    if @board[0] || @board[1] || @board[2] == ["X", "X", "X"] || @board[0] || @board[1] || @board[2] == ["O", "O", "O"]
      return "Well done, you've won!"
    end
  end
end
