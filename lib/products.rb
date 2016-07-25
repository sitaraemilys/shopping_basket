require_relative 'product'

class Products

  attr_reader :catalog

  def initialize
    @catalog = []
  end

  def add(product)
    @catalog << product
  end

end
