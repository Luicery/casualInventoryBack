class AddLatToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :lat, :integer
  end
end
