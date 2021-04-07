FactoryBot.define do
  factory :category_post, class: CategoryPost do
    category
    post
  end
end