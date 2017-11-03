require 'player'

describe Player do
  it 'intitialize' do
    player = Player.new
    expect(player).to be_instance_of(Player)
  end
end
