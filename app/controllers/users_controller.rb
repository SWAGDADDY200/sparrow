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
    @user = User.find(params[:id])
    if current_user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete

  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:name, :email, :password, :password_confirmation, :image)
  end
end
