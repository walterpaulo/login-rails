Rails.application.routes.draw do
  resources :administrators
  root "administrators#index" 

  get '/login', to: 'login#index'
  get '/login', to: 'login#logar'
  get '/logout', to: 'login#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
