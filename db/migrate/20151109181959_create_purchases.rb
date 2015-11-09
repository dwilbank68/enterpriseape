class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :category
      t.integer :quantify
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
