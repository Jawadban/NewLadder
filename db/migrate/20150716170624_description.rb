class Description < ActiveRecord::Migration
  def change
  	add_column :ads, :description, :string

  end
end
