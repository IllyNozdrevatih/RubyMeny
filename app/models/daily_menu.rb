class DailyMenu < ApplicationRecord
  has_and_belongs_to_many :dish
end
