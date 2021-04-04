class ApplicationController < ActionController::Base
  before_action :header

  def header
    part_category_count = Category.count / 2
    @part_categories = Category.all.each_slice(part_category_count).to_a
  end
end
