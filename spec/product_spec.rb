require 'product'

describe Product do

  subject(:socks) { described_class.new("Socks", "S01", 7.95) }

  describe '#initialize' do

    it 'has a name' do
      expect(socks.name).to eq "Socks"
    end

    it 'has a code' do
      expect(socks.code).to eq "S01"
    end

    it 'has a price' do
      expect(socks.price).to eq 7.95
    end
  end

end
