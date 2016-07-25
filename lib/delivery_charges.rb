class DeliveryCharges

  def calculate(total)
    if under_50?(total)
      4.95
    elsif over_50_under_90?(total)
      2.95
    end
  end

  private

  def under_50?(total)
    total < 50
  end

  def over_50_under_90?(total)
    total > 50 && total < 90
  end
  
end
