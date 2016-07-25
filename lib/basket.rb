require_relative 'products'

class Basket

  attr_reader :product_catalog

  def initialize(products)
    @product_catalog = products.catalog
  end

end
