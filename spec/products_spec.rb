require 'products'

describe Products do

  subject(:products) { described_class.new }
  let(:socks) { double(:product) }

  describe '#initialize' do
    it 'has an empty catalog' do
      expect(products.catalog).to be_empty
    end
  end

  describe '#add' do
    it 'adds a product to the catalog' do
      products.add(socks)
      expect(products.catalog).to eq [socks]
    end
  end

end
