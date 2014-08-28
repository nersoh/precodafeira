class HomeController < ApplicationController
	respond_to :html
	def index
		# Lista os três supermercados com mais produtos ofertados (sales)
		@top_supermarkets = Supermarket.joins(:sales)
			.where("supermarkets.id = sales.supermarket_id")
			.group("supermarkets.nome")
			.order("count_id DESC")
			.limit(3)
			.count(:id)

		# Listar as ofertas que tiveram maior queda de preço
		@sales_down = Sale.all.limit(5).order("sales.current_price - sales.old_price ASC")

		# Listar as ofertas que tiveram maior aumento de preço
		@sales_up = Sale.all.limit(5).order("sales.current_price - sales.old_price DESC")
		
		respond_with(@supermarkets, @sales_down, @sales_up)
	end
end
