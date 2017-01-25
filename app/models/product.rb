class Product < ActiveRecord::Base
  def price_as_integer
    price.to_i
  end

  def discounted?
    price_as_integer < 100
  end

  def tax
    price_as_integer * 0.09
  end

  def total
    price_as_integer + tax
  end
end
