class SiteController < ApplicationController

	# rails generate controller

	def home 

		# render 'home' #name of view template

	end

	def contact

		# render 'contact'

	end

	def calculator
	end

	def calculate
		
		@first_num = params[:first_num].to_f
		@second_num = params[:second_num].to_f

		@result = @first_num + @second_num

		'calculate'

	end
end
