FactoryBot.define do
  factory :category, class: Category do
    trait :default_category do
      name { 'name' }
    end
  end
end