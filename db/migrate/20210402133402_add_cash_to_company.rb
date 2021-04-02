class AddCashToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :cash, :integer
  end
end
