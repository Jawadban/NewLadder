class AddPaidFlagToAd < ActiveRecord::Migration
  def change
    add_column :ads, :paid, :boolean
  end
end
