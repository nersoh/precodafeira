class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :marca
      t.string :nome
      t.string :medida

      t.timestamps
    end
  end
end
