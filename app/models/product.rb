class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  # validates :description, length: {in: 20..500}

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

  def default_image
    if images.count > 0
      images.first.url
    else
      "http://4.bp.blogspot.com/-tSgHzHw6s6k/VWXoeYa-eSI/AAAAAAAA0QA/mjIIKhl6XKQ/s1600/Family-Matters-Urkel-Greatest-Blerds-600-319.jpg"
    end
  end
end
