class Product < ActiveRecord::Base
	has_many :sales

	def display_name
		"#{nome} (#{marca}) - #{medida}"
	end
end
