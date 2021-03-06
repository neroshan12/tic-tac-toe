require 'game'

describe Game do
  subject(:game) {described_class.new}

  describe 'initialize' do
    it 'initializes with a new game' do
      expect(game).to be_instance_of(Game)
    end
    it 'initializes with a 3x3 board' do
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", " ", " "],
                                [" ", " ", " "]])
    end
  end
  describe 'allows the user to place on board'
    it 'allows you to place an X on the board' do
      game.place_figure(3, 2, "X")
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", " ", "X"],
                                [" ", " ", " "]])
    end
    it 'allows you to place an O on the board' do
      game.place_figure(2, 2, "O")
      expect(game.board).to eq([[" ", " ", " "],
                                [" ", "O", " "],
                                [" ", " ", " "]])
    end
    it 'does not allow you to place on a taken space' do
      game.place_figure(2, 2, "X")
      expect(game.place_figure(2, 2, "O")).to eq("Sorry that space is already taken")
    end

    it 'notifies the user if the game has been won horizontally (X)' do
      game.place_figure(2, 1, "X")
      game.place_figure(1, 1, "X")
      game.place_figure(3, 1, "X")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won vertically (X)' do
      game.place_figure(1, 1, "X")
      game.place_figure(1, 2, "X")
      game.place_figure(1, 3, "X")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won horizontally (O)' do
      game.place_figure(2, 1, "O")
      game.place_figure(1, 1, "O")
      game.place_figure(3, 1, "O")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won vertically (O)' do
      game.place_figure(1, 1, "O")
      game.place_figure(1, 2, "O")
      game.place_figure(1, 3, "O")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won diagonally (L-R)(X)' do
      game.place_figure(1, 1, "X")
      game.place_figure(2, 2, "X")
      game.place_figure(3, 3, "X")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won diagonally (R-L)(X)' do
      game.place_figure(3, 1, "X")
      game.place_figure(2, 2, "X")
      game.place_figure(1, 3, "X")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won diagonally (L-R)(O)' do
      game.place_figure(1, 1, "O")
      game.place_figure(2, 2, "O")
      game.place_figure(3, 3, "O")
      expect(game.winner?).to eq("Well done, you've won!")
    end
    it 'notifies the user if the game has been won diagonally (R-L)(O)' do
      game.place_figure(3, 1, "O")
      game.place_figure(2, 2, "O")
      game.place_figure(1, 3, "O")
      expect(game.winner?).to eq("Well done, you've won!")
    end

end
