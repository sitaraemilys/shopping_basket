require_relative 'products'

class Basket

  attr_reader :product_catalog, :order_log, :total, :delivery_charges

  def initialize(products, delivery_charges=DeliveryCharges)
    @product_catalog = products.catalog
    @order_log = []
    @total = 0
    @delivery_charges = delivery_charges.new
  end

end
