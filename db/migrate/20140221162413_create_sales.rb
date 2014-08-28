class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
    	t.references :supermarket, :product 
      t.timestamps
    end
    drop_table :produtos
    drop_table :supermercados
    drop_table :ofertas
    drop_table :precos
  end
end
