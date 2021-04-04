class Post < ApplicationRecord
  has_one_attached :preview_image
  has_rich_text :content

  has_many :category_posts
  has_many :categories, through: :category_posts
end
