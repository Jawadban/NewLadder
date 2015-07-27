class SetDefaultVariationsToOne < ActiveRecord::Migration
  def change
  	change_column :ads, :variations, :integer, :default => 1
  end
end
