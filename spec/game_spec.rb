require 'game'

describe Game do
  describe 'initialize' do
    it 'initializes with a new game' do
      game = Game.new
      expect(game).to be_instance_of(Game)
    end
  end
end
