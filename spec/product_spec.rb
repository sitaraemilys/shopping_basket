require 'product'

describe Product do

  describe '#initialize' do

    it 'has a name' do
      socks = Product.new("Socks", "S01")
      expect(socks.name).to eq "Socks"
    end

    it 'has a code' do
      socks = Product.new("Socks", "S01")
      expect(socks.code).to eq "S01"
    end
  end

end
