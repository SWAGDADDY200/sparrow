class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Post was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

  end

  def delete

  end

  private

  def user_params
    params.fetch(:user, {}).permit(:name, :email, :password, :password_confirmation)
  end
end
