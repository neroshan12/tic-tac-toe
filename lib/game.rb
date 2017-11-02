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
    horizontal_winx = @board[0] == ["X", "X", "X"] || @board[1] == ["X", "X", "X"] || @board[2] == ["X", "X", "X"]
    horizontal_wino = @board[0] == ["O", "O", "O"] || @board[1] == ["O", "O", "O"] || @board[2] == ["O", "O", "O"]
    vertical_winx = @board[0][0] && @board[1][0] && @board[2][0] == "X"
    vertical_wino = @board[0][0] && @board[1][0] && @board[2][0] == "O"
    if vertical_wino || horizontal_winx || horizontal_wino || vertical_winx
      return "Well done, you've won!"
    end
  end
end
