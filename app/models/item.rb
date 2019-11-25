class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
