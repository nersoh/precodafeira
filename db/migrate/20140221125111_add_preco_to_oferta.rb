class AddPrecoToOferta < ActiveRecord::Migration
  def change
  	add_column :precos, :oferta_id, :integer
  	remove_column :precos, :produto_id
  end
end
