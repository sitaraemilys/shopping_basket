require_relative 'products'

class Basket

  attr_reader :product_catalog, :order_log, :total

  def initialize(products)
    @product_catalog = products.catalog
    @order_log = []
    @total = 0
  end

end
