class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name, null: false
      t.string :weight, null: false
      t.string :measure , null: true 
      t.float :price,null: false
      t.integer :category_id,null:true,default:0
    end
  end
end
