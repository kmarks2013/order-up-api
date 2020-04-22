Rails.application.routes.draw do
  resources :orders
  resources :favorites
  resources :reviews
  resources :dishes
  resources :resturants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
