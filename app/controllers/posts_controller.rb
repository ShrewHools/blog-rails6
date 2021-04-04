class PostsController < ApplicationController
  def index
    # TODO add will_paginate
    # TODO add service
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end
