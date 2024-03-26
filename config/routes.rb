Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  post '/auth/login', to: 'authentication#login'
  get '/categories', to: 'categories#index'
  get '/options', to: 'options#index'
end
