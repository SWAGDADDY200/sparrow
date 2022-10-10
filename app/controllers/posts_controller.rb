# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_author, only: [:edit, :update, :destroy]
  before_action :require_user_login, except: [:show, :index]

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path, info: "Post was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @post = current_user.posts.new
  end

  def index
    @posts = Post.all
  end

  # def show
  #   @posts = Post.find(params[:id])
  # end
  def update
    @post = current_user.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: "Post was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end



  def show
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    flash[:success] = 'Post was successfully destroyed!'
    redirect_to root_path
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def require_user_login
    if current_user.nil?
      flash[:notice] = "YOU MUST BE LOGGED IN"
      redirect_to login_path
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
  def require_author
    redirect_to(root_path) unless @post.user == current_user
  end

  def post_params
    params.require(:post).permit(:body, images: [])
  end

end
