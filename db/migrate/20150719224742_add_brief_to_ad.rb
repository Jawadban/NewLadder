class AddBriefToAd < ActiveRecord::Migration
  def change
    add_column :ads, :brief, :text
  end
end
