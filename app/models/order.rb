class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items
  belongs_to :user

def order_email
  #UserMailer.order_email(self).deliver_later
  #
end

end