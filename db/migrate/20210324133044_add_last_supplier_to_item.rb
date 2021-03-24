class AddLastSupplierToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :lastSupplier, :bigint
  end
end
