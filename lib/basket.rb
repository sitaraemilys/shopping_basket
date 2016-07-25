require_relative 'products'
require_relative 'delivery_charges'
require_relative 'special_offers'

class Basket

  attr_reader :product_catalog, :order_log, :total, :delivery_charges, :special_offers

  def initialize(products, delivery_charges=DeliveryCharges, special_offers=SpecialOffers)
    @product_catalog = products.catalog
    @order_log = []
    @total = 0
    @delivery_charges = delivery_charges.new
    @special_offers = special_offers.new
  end

end
