class AddMakeFlagsToAd < ActiveRecord::Migration
  def change
  	add_column :ads, :make_image, :boolean, :default => true
  	add_column :ads, :make_copy, :boolean, :default => true
  	remove_column :ads, :description, :string
  end
end
