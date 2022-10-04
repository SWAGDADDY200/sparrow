# frozen_string_literal: true

class CritiquesController < ApplicationController
  before_action :set_post
  before_action :require_user_login, only: [:new]

  def create
    @critique = @post.critiques.new(critique_params)
    @critique.user = current_user
    if @critique.save

      redirect_to root_path, notice: "Review was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end
   
  def new
    @critique = @post.critiques.new
  end

  def index
    @critique= @post.critiques
  end

  def require_user_login
    if current_user.nil?
      flash[:notice] = "YOU MUST BE LOGGED IN"
      redirect_to login_path
    end
  end


  private
  def critique_params
    params.require(:critique).permit(:rating, :comment, :body)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
