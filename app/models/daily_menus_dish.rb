class DailyMenusDish < ApplicationRecord
  belongs_to :dish
  belongs_to :daily_menu

  before_create :set_price
  before_create :set_category
  
  private

  def set_price
    self.price = dish.price
  end
  def set_category
  	self.category = dish.category.title
  end	
end