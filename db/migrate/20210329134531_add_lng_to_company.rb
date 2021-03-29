class AddLngToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :lng, :integer
  end
end
