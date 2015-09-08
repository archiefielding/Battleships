require 'ship_2'
describe Ship_2 do

    it "should be floating when created" do
      expect(Ship_2.new(3)).to be_floating
    end

    describe "#hit" do
      it 'can be hit' do
        expect(Ship_2.new(3)).to respond_to :hit
      end

      it "returns damage" do
        expect(Ship_2.new(3).hit(0)).to eq(1)
      end
    end

    it "Ship can report status" do
    	expect(Ship_2.new(3)).to respond_to :status
    end

    it 'Ship can respond with status "All fine"' do
    	expect(Ship_2.new(3).status).to eq("All fine")
    end

    it "can check its makeup" do
      ship = Ship_2.new(3)
      ship.hit(0)
      expect(ship.check).to eq(1)
    end

    it "can check its all fine" do
      expect(Ship_2.new(3).check).to eq(0)
    end

    it 'Ship can respond with status "Sunk"' do
      ship = Ship_2.new(3)
      ship.hit(0)
      ship.hit(1)
      ship.hit(2)
      expect(ship.status).to eq("Sunk")
    end

    it "can't be floating if sunk" do
    	ship = Ship_2.new(3)
      ship.hit(0)
      ship.hit(1)
      ship.hit(2)
    	expect(ship.floating?).to eq(false)
    end

    it "Ship sinks if each part is hit" do
       ship = Ship_2.new(3)
       ship.hit(0)
       ship.hit(1)
       ship.hit(2)
      expect(ship.sunk?).to eq(true)
    end

    it "checks status after every hit" do
      ship = Ship_2.new(3)
      ship.hit(0)
      expect(ship.status).to eq("Damaged")
    end

end
