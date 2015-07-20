class UpdatePrice < ActiveRecord::Migration
  def change
  	remove_column :ads, :price, :decimal
	add_column :ads, :price, :decimal, precision: 5, scale: 2	
 end
end
