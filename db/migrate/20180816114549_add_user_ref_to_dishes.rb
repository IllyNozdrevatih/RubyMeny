class AddUserRefToDishes < ActiveRecord::Migration[5.2]
  def change
    add_reference :dishes, :category, foreign_key: true
  end
end
