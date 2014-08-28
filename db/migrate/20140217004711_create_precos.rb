class CreatePrecos < ActiveRecord::Migration
  def change
    create_table :precos do |t|
    	t.integer :produto_id
    	t.float :valor
      t.timestamps
    end
  end
end
