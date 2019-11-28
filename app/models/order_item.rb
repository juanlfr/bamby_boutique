class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item


  def total_by_item
    self.quantity * self.item.price
  end




end
