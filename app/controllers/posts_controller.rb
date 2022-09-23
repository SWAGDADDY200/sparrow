# frozen_string_literal: true

class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "Post was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  # def show
  #   @posts = Post.find(params[:id])
  # end
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: "Post was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end



  def show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = 'Post was successfully destroyed!'
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end
  private

  def post_params
    params.require(:post).permit(:author, :body, image: [])
  end
end
