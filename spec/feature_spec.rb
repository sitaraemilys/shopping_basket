require 'basket'

describe 'Feature tests' do

  describe '#initialize' do

    socks = Product.new("Socks", "S01", 7.95)
    jeans = Product.new("Jeans", "J01", 32.95)
    blouse = Product.new("Blouse", "B01", 24.95)
    products = Products.new
    products.add(socks)
    products.add(blouse)
    products.add(jeans)
    basket = Basket.new(products)

    it 'basket has a product catalog of products' do
      expect(basket.product_catalog).to eq products.catalog
    end

    it 'basket has an empty order log' do
      expect(basket.order_log).to be_empty
    end

    it 'basket has a total of 0' do
      expect(basket.total).to eq 0
    end
  end

end
