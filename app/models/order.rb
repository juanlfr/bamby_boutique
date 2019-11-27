class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items
  belongs_to :user
  after_create :order_email


  def total_order
    sum = 0
    self.order_items.each do |order_item|
      sum+= order_item.total_by_item
    end
    return sum
  end

  def order_email
    UserMailer.order_email(self).deliver_now
  end

end