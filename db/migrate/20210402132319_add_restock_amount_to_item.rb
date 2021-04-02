class AddRestockAmountToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :restockAmount, :integer
  end
end
