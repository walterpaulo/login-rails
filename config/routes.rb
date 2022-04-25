Rails.application.routes.draw do
  resources :administrators

  root to: "administrators#index"

  get '/login', to: 'adminstrator#index'
  post '/login', to: 'adminstrator#logar'
  get '/logout', to: 'adminstrator#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
