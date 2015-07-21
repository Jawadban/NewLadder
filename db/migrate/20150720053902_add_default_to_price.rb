class AddDefaultToPrice < ActiveRecord::Migration
  def change
  		change_column :ads, :price, :decimal, precision: 5, scale: 2, default: "0.00"
  end
end
