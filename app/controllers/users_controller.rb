class UsersController < ApplicationController

  def new
    @user = User.new
    # user_params
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path
    else
      render "new"
    end
  end

private

  # def user_params
  #   params.require(:user).permit(:login, :email, :password)
  # end
end
