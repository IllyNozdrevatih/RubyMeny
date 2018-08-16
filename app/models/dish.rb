class Dish < ApplicationRecord
  belongs_to :category,required: true
  has_and_belongs_to_many :daily_menus
  validates :name,:measure,presence: true
  validates :price ,numericality:true,presence: true
  validates :weight ,numericality:true,presence: true
end
