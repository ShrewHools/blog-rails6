class PostsController < ApplicationController
  def index
    @posts_presenter = Posts::PostsPresenter.new.gather_data
  end

  def show
    @post_presenter = Posts::PostPresenter.new(params[:id])
  end
end
