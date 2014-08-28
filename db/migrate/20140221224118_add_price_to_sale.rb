class AddPriceToSale < ActiveRecord::Migration
  def change
  	add_column :sales, :current_price, :float
  end
end
