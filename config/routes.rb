Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show]
  resources :stores,  only: [:index, :show, :new, :create]
  resources :bookings, only: [:show, :new, :create]
end
