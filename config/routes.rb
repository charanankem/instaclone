Rails.application.routes.draw do
  #get 'home/index'
  devise_for :users
  resources:users
  resources:follows
  resources:posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  post "follows/new", to: "follows#create"
end