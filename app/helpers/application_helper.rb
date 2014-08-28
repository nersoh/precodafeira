module ApplicationHelper
	# Informa a variação, em porcentagem, do preço atual da oferta(sale) para o anterior
	def status_preco(sale)
		variacao = (100 * sale.current_price.to_f ) / sale.old_price.to_f - 100
		if variacao < 0
			content_tag(:span, "#{variacao.round(2)}%", class: "price-up success badge")
		elsif variacao > 0
			content_tag(:span, "+#{variacao.round(2)}%", class: "price-down danger badge")
		else
			content_tag(:span, "#{variacao.round(2)}%", class: "price-stay light badge")
		end
	end
end
