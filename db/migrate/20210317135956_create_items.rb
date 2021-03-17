class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :amount
      t.string :name
      t.integer :restock
      t.belongs_to :stock, foreign_key: true

      t.timestamps
    end
  end
end
