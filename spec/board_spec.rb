require 'board'
describe Board do
  it "is 1x1" do
    expect(subject.board).to eq([])
  end

  it "can take a ship" do
    ship = Ship.new
    expect(subject.place(ship)).to include(ship)
  end
end
