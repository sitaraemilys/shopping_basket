require_relative 'products'
require_relative 'delivery_charges'
require_relative 'special_offers'

class Basket

  attr_reader :product_catalog, :order_log, :sum, :delivery_charges, :special_offers

  def initialize(products, delivery_charges=DeliveryCharges, special_offers=SpecialOffers)
    @product_catalog = products.catalog
    @order_log = []
    @sum = 0
    @delivery_charges = delivery_charges.new
    @special_offers = special_offers.new
  end

  def add(product_code)
    @product_catalog.each do |product|
      if product.code == product_code
        @order_log << product
        @sum += product.price
      end
    end
  end

end
