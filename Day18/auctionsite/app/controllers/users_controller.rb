class UsersController < ApplicationController
  
  def index
  end


  def new

  	@user_new = User.new
  
  end

  def create
    @user_new = User.new(
      :name => params[:user][:name],
      :email => params[:user][:email]
      )
    @user_new.save

    redirect_to "/users/#{@user_new.id}"
  end

  def show

    @user = User.find_by(id: params[:id])
    
  end

end
