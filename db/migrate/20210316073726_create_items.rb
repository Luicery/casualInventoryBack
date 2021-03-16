class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :amount
      t.string :name
      t.integer :restock

      t.timestamps
    end
  end
end
