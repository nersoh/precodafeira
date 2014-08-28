class CreateSupermercados < ActiveRecord::Migration
  def change
    create_table :supermercados do |t|
      t.string :nome
      t.text :descricao
      t.string :endereco
      t.string :cep

      t.timestamps
    end
  end
end
