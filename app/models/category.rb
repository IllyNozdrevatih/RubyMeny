class Category < ApplicationRecord
  has_many :dish
  validates :title,presence: true
end
