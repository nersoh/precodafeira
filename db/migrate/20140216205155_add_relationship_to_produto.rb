class AddRelationshipToProduto < ActiveRecord::Migration
  def change
  	add_column :produtos, :supermercado_id, :integer
  end
end
