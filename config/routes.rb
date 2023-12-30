Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
  require 'split/dashboard'
  get 'home/change_ab_test', to: 'home#change_ab_test'
  mount Split::Dashboard, at: 'admin/split'
end
