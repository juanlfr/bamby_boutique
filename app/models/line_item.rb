class LineItem < ApplicationRecord

	belongs_to :item
	belongs_to :cart

	#to calculate the price of a line item (quantity * unit price)
  def total_by_item
    self.quantity * self.item.price
  end

end
