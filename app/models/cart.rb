class Cart < ApplicationRecord

	belongs_to :user
	has_many :line_items
	has_many :items, through: :line_items

	# to calculate the total price of the cart
  def total_cart
    sum = 0
    self.line_items.each do |line_item|
      sum+= line_item.total_by_item
    end
    return sum
  end

end

