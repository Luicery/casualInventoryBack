class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :amount
      t.integer :restockPoint
      t.bigint :lastSupplier
      t.boolean :autoRestock
      t.integer :price
      t.integer :restockTo
      t.belongs_to :stock, foreign_key: true

      t.timestamps
    end
  end
end
