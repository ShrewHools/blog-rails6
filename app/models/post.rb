class Post < ApplicationRecord
  has_one_attached :preview_image
  has_rich_text :content
end
