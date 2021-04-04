Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'posts#index'
  resources :posts, only: %i[index show]
  resources :categories, only: :show
end
