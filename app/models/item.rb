class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true

 	has_many :line_items
	has_many :carts, through: :line_items

end
