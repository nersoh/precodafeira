class RemoveProdutoColumn < ActiveRecord::Migration
  def change
  	remove_column :produtos, :supermercado_id
  end
end
