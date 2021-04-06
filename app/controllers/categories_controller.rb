class CategoriesController < ApplicationController
  def show
    @categories_presenter = Categories::CategoriesPresenter.new(params[:id]).gather_data
  end
end
