class AddZipToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :zip, :integer
  end
end
