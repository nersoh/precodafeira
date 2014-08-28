class CreateSupermarkets < ActiveRecord::Migration
  def change
    create_table :supermarkets do |t|
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
