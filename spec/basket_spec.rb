require 'basket'

describe Basket do

  let(:socks) { double(:socks) }
  let(:jeans) { double(:jeans) }
  let(:blouse) { double(:blouse) }
  let(:products) {double(:products, catalog: [socks, jeans, blouse]) }
  subject(:basket) { described_class.new(products) }

  describe '#initialize' do

    it 'has a product catalog' do
      expect(basket.product_catalog).to eq [socks, jeans, blouse]
    end

    it 'has an empty order log' do
      expect(basket.order_log).to be_empty
    end
  end

  it 'has a total of 0' do
    expect(basket.total).to eq 0
  end

  it 'has delivery charge rules' do
    expect(basket.delivery_charges).to be_an_instance_of DeliveryCharges
  end

end
