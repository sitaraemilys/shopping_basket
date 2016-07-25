require 'basket'

describe Basket do

  let(:socks) { double(:socks, code: 'S01', price: 7.95) }
  let(:jeans) { double(:jeans, code: 'J01', price: 32.95) }
  let(:blouse) { double(:blouse, code: 'B01', price: 24.95) }
  let(:products) {double(:products, catalog: [socks, jeans, blouse]) }
  subject(:basket) { described_class.new(products) }

  describe '#initialize' do
    it 'has a product catalog' do
      expect(basket.product_catalog).to eq [socks, jeans, blouse]
    end

    it 'has an empty order log' do
      expect(basket.order_log).to be_empty
    end

    it 'has a total of 0' do
      expect(basket.sum).to eq 0
    end

    it 'has delivery charge rules' do
      expect(basket.delivery_charges).to be_an_instance_of DeliveryCharges
    end

    it 'has special offers' do
      expect(basket.special_offers). to be_an_instance_of SpecialOffers
    end
  end

  describe '#add' do

    before(:each) { basket.add('S01') }

    it 'takes a product code and adds the product to the order log' do
      expect(basket.order_log).to eq [socks]
    end

    it 'adds the price of the product to the total' do
      expect(basket.sum).to eq 7.95
    end
  end

  describe '#total' do
    it 'returns the sum of the basket, taking into account delivery charges and special offers' do
      basket.add('S01')
      basket.add('J01')
      basket.add('J01')
      expect(basket.total).to eq '£60.33'
    end
  end

end
