require 'grid'

describe Grid do
  it 'initializes with a grid' do
    grid = Grid.new
    expect(grid.three).to eq([[" ", " ", " "],
                              [" ", " ", " "],
                              [" ", " ", " "]])
  end
end
