class Sale < ActiveRecord::Base
	before_save :current_price_change
	
	validates :supermarket_id, uniqueness: { scope: :product_id, message: "should happen once per product"}
	validates_presence_of :current_price

	belongs_to :supermarket
	belongs_to :product
	has_many :prices

	# Testa se o preço foi modificado atribuindo o preço antigo e criando um novo preço
	def current_price_change
		if self.current_price_changed?
			unless self.current_price_was.nil?
				self.old_price = self.current_price_was
				self.prices.create(value: self.current_price)
			else
				self.old_price = self.current_price
			end
		end
	end
end
