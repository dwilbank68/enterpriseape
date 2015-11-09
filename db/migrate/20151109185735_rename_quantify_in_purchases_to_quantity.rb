class RenameQuantifyInPurchasesToQuantity < ActiveRecord::Migration
  def change
    rename_column :purchases, :quantify, :quantity
  end
end
