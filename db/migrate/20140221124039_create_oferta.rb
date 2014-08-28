class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
    	t.references :supermercado, :produto
      t.timestamps
    end
  end
end
