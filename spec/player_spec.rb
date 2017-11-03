require 'player'

describe Player do
  it 'intitialize' do
    player = Player.new("Nero")
    expect(player).to be_instance_of(Player)
  end

  it 'initializes with a name' do
    player = Player.new("Nero")
    expect(player.name).to eq("Nero")
  end
end
