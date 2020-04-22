Rails.application.routes.draw do
  resources :order_dishes
  resources :orders
  resources :favorites
  resources :reviews
  resources :dishes
  resources :resturants
  resources :users

  post '/login', to: 'auth#login'
  post 'signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
