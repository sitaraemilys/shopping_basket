class SpecialOffers

  def calculate(order_log, total)
      two_for_one_jeans(order_log, total)
    end

    private

    def two_for_one_jeans(order_log, total, jean_code="J01", jean_price=32.95)
      jean_count = 0
      order_log.each { |item| jean_count += 1 if item.code == jean_code }
      if jean_count >= 2
        full_price = jean_count * jean_price
        total -= full_price
        half_price_items = jean_count/2
        full_price_items = jean_count - half_price_items
        discounted_price = (half_price_items * (jean_price/2).to_f) + (full_price_items * jean_price)
        total += discounted_price
      end
    total
    end

end
