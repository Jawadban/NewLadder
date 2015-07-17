class AddPriceAndVariationToAd < ActiveRecord::Migration
  def change
  	    add_column :ads, :price, :decimal
	    add_column :ads, :variations, :integer
	    add_column :ads, :user_id, :integer

  end
end
