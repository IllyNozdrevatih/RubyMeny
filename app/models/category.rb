class Category < ApplicationRecord
  has_many :dish
  validates :name,presence: true
end
