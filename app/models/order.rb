class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items
  belongs_to :user

  def total_order
    sum = 0
    self.order_items.each do |order_item|
      sum+= order_item.total_by_item
    end
    return sum
  end

end
