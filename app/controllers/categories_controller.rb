class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(id: params[:id])
    @category_posts = @category.posts
  end
end
