class ContactsController < ApplicationController

	def index
		@contacts = Contact.order("name ASC")
				# binding.pry
	end

	def new
	end

	def create
		@contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])

		@contact.save

		redirect_to("/contacts")
	end

	def show
		
		@contacts = Contact.order("name ASC")
		@id = (params[:id]).to_i
		@name = Contact.find_by(id:@id).name
		@address = Contact.find_by(id:@id).address
		@phone = Contact.find_by(id:@id).phone
		@email = Contact.find_by(id:@id).email

		render "show"
	end
	
end
