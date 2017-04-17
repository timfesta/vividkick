class StaticsController < ApplicationController

	def home
		@products = Product.all
	end

	def top
	end

	def templates
		@products = Product.all
	end

	def contact
	end
	
end
