class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = current_user.build(user_params)
    @user.save
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :image)
  end
end
