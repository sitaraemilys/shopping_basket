require 'products'

describe Products do

  describe '#initialize' do
    it 'has an empty catalog' do
      expect(subject.catalog).to be_empty
    end
  end

  describe '#add' do
    it 'adds a product to the catalog' do
      socks = Product.new("Socks", "S01", 7.95)
      subject.add(socks)
      expect(subject.catalog).to eq [socks]
    end
  end

end
