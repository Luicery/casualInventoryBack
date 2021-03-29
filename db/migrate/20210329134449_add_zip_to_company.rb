class AddZipToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :zip, :integer
  end
end
