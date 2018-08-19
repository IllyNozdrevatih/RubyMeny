class CreateDailyMenusDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_menus_dishes do |t|
      t.belongs_to :dish , index: true
      t.belongs_to :daily_menu , index: true
      t.float :price , null: false
    end
  end
end
