class CreateTableOfertas < ActiveRecord::Migration
  def change
    create_table :ofertas do |t|
    	t.references :supermercado, :produto
      t.timestamps
    end
  end
end
