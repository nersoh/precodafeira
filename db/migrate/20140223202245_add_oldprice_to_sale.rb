class AddOldpriceToSale < ActiveRecord::Migration
  def change
  	add_column :sales, :old_price, :float
  end
end
