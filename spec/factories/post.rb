FactoryBot.define do
  factory :post, class: Post do
    trait :default_post do
      title { 'title' }
      description { 'description' }
    end
  end
end