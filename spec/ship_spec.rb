require 'Ship'

describe Ship do

  it "should be floating when created" do
  	expect(subject).to be_floating
  end

  it 'can be hit' do
    expect(subject).to respond_to :hit
  end

  it "Ship can report status" do
  	expect(subject).to respond_to :status
  end

  # it "can't be floating if sunk" do
  # 	subject.sunk?
  # 	expect(subject).
  # end

  it 'Ship can respond with status "All fine"' do
  	expect(subject.status).to eq("All fine")
  end

  it 'Ship can respond with status "Sunk"' do
    subject.hit
  	expect(subject.status).to eq("Sunk")
  end

  it 'can report being hit' do
  	expect(subject.hit).to eq("Hit")
  end

  it "Ship sinks if each part is hit" do
    subject.hit
    expect(subject.sunk?).to eq(true)
  end
end
