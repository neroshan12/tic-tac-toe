require 'game'

describe Game do
  describe 'initialize' do
    it 'initializes with a new game' do
      game = Game.new
      expect(game).to be_instance_of(Game)
    end
    it 'initializes with a 3x3 board' do
      game = Game.new
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", " ", " "],
                                [" ", " ", " "]])
    end
  end
    it 'allows you to place an X or O on the grid' do
      game = Game.new
      game.place_figure(3, 2, "x")
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", " ", "x"],
                                [" ", " ", " "]])
    end
end
