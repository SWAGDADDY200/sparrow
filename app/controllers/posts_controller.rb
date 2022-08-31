# frozen_string_literal: true

class PostsController < ApplicationController
  def create
    @post = Post.new(posts_params)
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

  def show
    @posts = Post.find(params[:id])
  end

  def update
    if Post.new.present?
      redirect_to posts_path, notice: "Post was successfully created"
    else
      redricet_to root_path, notice: "Error creating post"
    end
  end

  def author
    @posts = Post.find
  end

  private

  def posts_params
    params.require(:post).permit(:author, :body)
  end
end
