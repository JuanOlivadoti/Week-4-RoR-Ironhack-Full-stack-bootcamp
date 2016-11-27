class ProductsController < ApplicationController

before_action :find_user, :all_products

  def index
  	@user = User.find_by(id: params[:user_id])
  	@user_products = @user.products.all
  end
  
  def new
  	@product = Product.new
  	@user = User.find_by(id: params[:user_id])
  end

  def show
  	@product = Product.find_by(id: params[:id])
    @bid = Bid.new
    @product_bids = @product.bids.all
  end

  def create
  	@user = User.find(params[:user_id])
  	@product = @user.products.new(
  				title: params[:product][:title],
  				description: params[:product][:description],
  				deadline: params[:product][:deadline])

  		if @product.save

  			redirect_to "/users/#{@user.id}/products"

  		else 

  			render '/bids/new'

  		end
  end

  def destroy
  	
  end

  private

  def find_user 

  	@user = User.find_by(id: params[:id])
  	
  end

  def all_products
  	@all_products = Product.all
  end

  def product_params


  	
  end

end
