Rails.application.routes.draw do
  resources :movie_diaries
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'movie_diaries/index'
  root 'movie_diaries#index'
end
