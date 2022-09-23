# frozen_string_literal: true

class CritiquesController < ApplicationController
  before_action :set_post

  def create
    @critique = @post.critiques.new(critique_params)
    if @critique.save
      redirect_to post_path(@post), notice: "Review was successfully created"
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



  private
  def critique_params
    params.require(:critique).permit(:rating, :comment, :name)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
