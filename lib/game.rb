class Game
  attr_reader :board

  def initialize
    @board = [[" ", " ", " "],
              [" ", " ", " "],
              [" ", " ", " "]]
  end

  def place_figure(x, y, figure)
    board[y-1][x-1] = figure if board[y-1][x-1] == " "
    return "Sorry that space is already taken"
  end

  def winner?
    horizontal_winx = @board[0] == ["X", "X", "X"] || @board[1] == ["X", "X", "X"] || @board[2] == ["X", "X", "X"]
    horizontal_wino = @board[0] == ["O", "O", "O"] || @board[1] == ["O", "O", "O"] || @board[2] == ["O", "O", "O"]
    vertical_winx = @board[0][0] && @board[1][0] && @board[2][0] == "X"
    vertical_wino = @board[0][0] && @board[1][0] && @board[2][0] == "O"
    diagonal_winxl =  @board[0][0] && @board[1][1] && @board[2][2] == "X"
    diagonal_winxr =  @board[0][2] && @board[1][1] && @board[2][0] == "X"
    diagonal_winol =  @board[0][0] && @board[1][1] && @board[2][2] == "O"
    diagonal_winor =  @board[0][2] && @board[1][1] && @board[2][0] == "O"
    if vertical_wino || horizontal_winx || horizontal_wino || vertical_winx || diagonal_winxl || diagonal_winxr || diagonal_winor || diagonal_winol
      return "Well done, you've won!"
    end
  end
end
