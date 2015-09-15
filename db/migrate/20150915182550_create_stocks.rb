class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :no_of_shares
      t.string :stock_name
      t.string :share_price

      t.timestamps null: false
    end
  end
end
