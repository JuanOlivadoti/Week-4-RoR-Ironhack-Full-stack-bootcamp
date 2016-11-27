class BidsController < ApplicationController

  def new
    @bid = Bid.new
    @product = Product.find_by(id: params[:id])
    @bidding_user = User.find_by(email: params[:email])
    
  end

	def create
		@product = Product.find_by(id: params[:product_id])
    # @bidding_user = User.find_by(email: params[:email])
  	@bid = @product.bids.new(
  				amount: params[:amount],
          # user_id: User.find_by(email: params[:email]).id
          
          if User.find_by(email: params[:email]).id 

            @bid.user_id = user.id

            else 

            render "Unvalid email - no user for your email"
          
          end
          )

  		if @bid.save
#binding.pry
  			redirect_to "/users/#{@product.user_id}/products/#{@product.id}"

  		  else 

  			render '/bids/new'

  		end
		
	end
end
