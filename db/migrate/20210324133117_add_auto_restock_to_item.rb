class AddAutoRestockToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :autoRestock, :boolean
  end
end
