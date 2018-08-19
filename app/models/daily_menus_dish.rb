class DailyMenusDish < ApplicationRecord
  belongs_to :dish
  belongs_to :daily_menu

  before_create :set_price

  private

  def set_price
    self.price = dish.price
  end
end