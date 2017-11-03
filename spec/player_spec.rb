require 'player'

describe Player do
  it 'intitialize' do
    player = Player.new("Nero", "X")
    expect(player).to be_instance_of(Player)
  end

  it 'initializes with a name' do
    player = Player.new("Nero", "X")
    expect(player.name).to eq("Nero")
  end

  it 'intitializes with a marker' do
    player = Player.new("Nero", "X")
    expect(player.marker).to eq("X")
  end
end
