Rails.application.routes.draw do
  resources :recipes
  get '/public_recipes', to: "recipes#public_recipes"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Temp home page
  root to: "users#index"
  resources :users, only: %i[index show]
  resources :foods, only: %i[index show new create destroy]
  resources :foods_recipes, only: %i[new create destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
