class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :marca
      t.string :nome
      t.text :descricao
      t.string :medida
      t.float :preco
      
      t.timestamps
    end
  end
end
