class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
  end
end