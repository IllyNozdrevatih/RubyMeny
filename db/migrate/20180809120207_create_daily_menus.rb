class CreateDailyMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_menus do |t|
      t.date :date
    end
  end
end
