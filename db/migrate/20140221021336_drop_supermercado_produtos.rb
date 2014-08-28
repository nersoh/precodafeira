class DropSupermercadoProdutos < ActiveRecord::Migration
  def change
  	drop_table :supermercados_produtos
  end
end
