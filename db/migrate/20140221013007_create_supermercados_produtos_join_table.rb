class CreateSupermercadosProdutosJoinTable < ActiveRecord::Migration
  def change
  	create_table :supermercados_produtos do |t|
  		t.belongs_to :supermercado
  		t.belongs_to :produto
  	end
  end
end
