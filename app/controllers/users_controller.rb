class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def dashboard
  end

  def show
    @desired_user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :last_name, :first_name, :email, :phone_number, :birth_date, :description)
  end

end
