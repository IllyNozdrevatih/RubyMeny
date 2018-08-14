class Dish < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :daily_menus
end
