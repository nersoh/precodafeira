class CreateTablePrice < ActiveRecord::Migration
  def change
    create_table :prices do |t|
    	t.integer :sale_id
    	t.float :value
    	t.timestamps
    end
  end
end
