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
  describe 'allows the user to place on board'
    it 'allows you to place an X on the board' do
      game = Game.new
      game.place_figure(3, 2, "X")
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", " ", "X"],
                                [" ", " ", " "]])
    end
    it 'allows you to place an O on the board' do
      game = Game.new
      game.place_figure(2, 2, "O")
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", "O", " "],
                                [" ", " ", " "]])
    end
    it 'does not allow you to place on a taken space' do
      game = Game.new
      game.place_figure(2, 2, "X")
      expect(game.place_figure(2, 2, "O")).to eq("Sorry that space is already taken")
    end
    it 'notifies the user if the game has been won' do
      game = Game.new
      game.place_figure(2, 2, "X")
      game.place_figure(1, 2, "X")
      game.place_figure(3, 2, "X")
      expect(game.winner?).to eq("Well done, you've won!")
    end
end
