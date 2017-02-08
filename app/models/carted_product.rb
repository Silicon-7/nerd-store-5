class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user

  # Quantity: integer - greater than 0 - presence
  # Status: presence

  validates :quantity, numericality: {only_integer: true, greater_than: 0}
  validates :quantity, presence: true
  validates :status, presence: true

  def subtotal
    product.price * quantity
  end
end
