class Dish < ApplicationRecord
  belongs_to :category,required: true
  has_many :daily_menus_dishes
  has_many :daily_menus, through: :daily_menus_dishes
  validates :name,:measure,presence: true
  validates :price ,numericality:true,presence: true
  validates :weight ,numericality:true,presence: true

  def last_price(dish)
    daily_menus_dishes.find(dish.daily_menus_dishes.ids[0]).price
  end
end