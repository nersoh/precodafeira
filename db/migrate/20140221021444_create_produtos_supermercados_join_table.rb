class CreateProdutosSupermercadosJoinTable < ActiveRecord::Migration
  def change
  	create_table :produtos_supermercados do |t|
  		t.belongs_to :supermercado
  		t.belongs_to :produto
  	end
  end
end
