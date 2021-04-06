class PostsController < ApplicationController
  def index
    @posts_presenter = Posts::PostsPresenter.new(params[:page]).gather_data
  end

  def show
    @post_presenter = Posts::PostPresenter.new(params[:id])
  end
end
