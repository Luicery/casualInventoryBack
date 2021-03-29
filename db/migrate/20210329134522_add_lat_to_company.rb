class AddLatToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :lat, :integer
  end
end
