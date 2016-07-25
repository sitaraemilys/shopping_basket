require_relative 'products'

class Basket

  attr_reader :product_catalog, :order_log

  def initialize(products)
    @product_catalog = products.catalog
    @order_log = []
  end

end
