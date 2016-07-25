require 'basket'

describe 'Feature tests' do

  socks = Product.new("Socks", "S01", 7.95)
  jeans = Product.new("Jeans", "J01", 32.95)
  blouse = Product.new("Blouse", "B01", 24.95)
  products = Products.new
  products.add(socks)
  products.add(blouse)
  products.add(jeans)
  basket = Basket.new(products)

  describe '#initialize' do
    it 'basket has a product catalog of products' do
      expect(basket.product_catalog).to eq products.catalog
    end

    it 'basket has an empty order log' do
      expect(basket.order_log).to be_empty
    end

    it 'basket has a total of 0' do
      expect(basket.total).to eq 0
    end

    it 'basket has delivery charge rules' do
      expect(basket.delivery_charges).to be_an_instance_of DeliveryCharges
    end

    it 'basket has special offers' do
      expect(basket.special_offers). to be_an_instance_of SpecialOffers
    end
  end

  describe '#add' do
    it 'basket takes a product code adds the product to the order log' do
      basket.add('S01')
      expect(basket.order_log).to eq [socks]
    end

    it 'adds the price of the product to the total' do
      expect(basket.total).to eq 7.95
    end
  end



end
