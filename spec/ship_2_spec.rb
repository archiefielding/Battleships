require 'ship_2'
describe Ship_2 do

    it "should be floating when created" do
      expect(subject).to be_floating
    end
    
    describe "#hit" do
      it 'can be hit' do
        expect(subject).to respond_to :hit
      end

      it "returns damage" do
        expect(subject.hit(0)).to eq(1)
      end
    end

    it "Ship can report status" do
    	expect(subject).to respond_to :status
    end

    it 'Ship can respond with status "All fine"' do
    	expect(subject.status).to eq("All fine")
    end

    it "can check its makeup" do
      subject.hit(0)
      expect(subject.check).to eq(1)
    end

    it "can check its all fine" do
      expect(subject.check).to eq(0)
    end

    it 'Ship can respond with status "Sunk"' do
      subject.hit(0)
      subject.hit(1)
      expect(subject.status).to eq("Sunk")
    end

    it "can't be floating if sunk" do
    	subject.sunk?
    	expect(subject.floating?).to eq(true)
    end

    it "Ship sinks if each part is hit" do
      subject.hit(0)
      subject.hit(1)
      expect(subject.sunk?).to eq(true)
    end

    it "checks status after every hit" do
      subject.hit(0)
      expect(subject.status).to eq("Damaged")
    end

end
