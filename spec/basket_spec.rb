require 'basket'

describe Basket do

  let(:socks) { double(:socks) }
  let(:jeans) { double(:jeans) }
  let(:blouse) { double(:blouse) }
  let(:products) {double(:products, catalog: [socks, jeans, blouse]) }
  subject(:basket) { described_class.new(products) }

  describe '#initialize' do

    it 'has a product catalog' do
      expect(subject.product_catalog).to eq [socks, jeans, blouse]
    end
  end

end
