require 'basket'

describe 'Feature tests' do

  describe '#initialize' do
    it 'basket has a product catalog of products' do
      socks = Product.new("Socks", "S01", 7.95)
      jeans = Product.new("Jeans", "J01", 32.95)
      blouse = Product.new("Blouse", "B01", 24.95)
      products = Products.new
      products.add(socks)
      products.add(blouse)
      products.add(jeans)
      basket = Basket.new(products)
      expect(basket.product_catalog).to eq(products.catalog)
    end
  end

end
