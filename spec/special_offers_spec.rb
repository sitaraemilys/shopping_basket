require 'special_offers'

describe SpecialOffers do

  let(:socks) { double(:socks, code: 'S01', price: 7.95) }
  let(:jeans) { double(:jeans, code: 'J01', price: 32.95) }
  let(:blouse) { double(:blouse, code: 'B01', price: 24.95) }
  subject(:special_offers) { described_class.new }

  describe '#calculate' do
    it 'calulates 2 for 1 special offers on jeans' do
      expect(special_offers.calculate([jeans, jeans], 65.9)).to eq 49.425000000000004
    end
  end

end
