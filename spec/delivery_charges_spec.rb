require 'delivery_charges'

describe DeliveryCharges do

  let(:socks) { double(:socks, code: 'S01', price: 7.95) }
  let(:jeans) { double(:jeans, code: 'J01', price: 32.95) }
  let(:blouse) { double(:blouse, code: 'B01', price: 24.95) }
  subject(:delivery_charges) { described_class.new }

  describe '#calculate' do
    it 'returns 4.95 if the total is under 50' do
      expect(delivery_charges.calculate(30)).to eq 4.95
    end

    it 'returns 2.95 if the total is above 50 and under 90' do
      expect(delivery_charges.calculate(60)).to eq 2.95
    end

    it 'returns nothing if the total is above 90' do
      expect(delivery_charges.calculate(100)).to eq nil
    end
  end
end
