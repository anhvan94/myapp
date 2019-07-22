class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])

  end

  def new
  	@user = User.new
  end
  def create
    @user = User.new(new_params)   
    if @user.save

    else
      render 'new'
    end
  end
  def new_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end