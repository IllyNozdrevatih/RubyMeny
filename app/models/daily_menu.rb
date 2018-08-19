class DailyMenu < ApplicationRecord
  has_many :daily_menus_dishes
  has_many :dishes, through: :daily_menus_dishes
  validates :date, presence: true

end