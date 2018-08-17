class AddUserRefToDishes < ActiveRecord::Migration[5.2]
  def change
    add_reference :dishes, :category ,null: false ,default: 1
  end
end
