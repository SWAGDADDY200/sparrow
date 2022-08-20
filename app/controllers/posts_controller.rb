class PostsController < ApplicationController
  
  def create
  end

  def new
    @post = Post.new
  end


end