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

    board[yco][xco] = figure
  end
end
