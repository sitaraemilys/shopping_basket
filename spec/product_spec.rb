require 'product'

describe Product do

  describe '#initialize' do

    it 'has a name' do
      socks = Product.new("Socks")
      expect(socks.name).to eq "Socks"
    end
  end

end
