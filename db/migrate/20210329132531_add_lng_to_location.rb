class AddLngToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :lng, :integer
  end
end
