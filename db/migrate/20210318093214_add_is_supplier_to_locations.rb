class AddIsSupplierToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :is_supplier, :boolean
  end
end
