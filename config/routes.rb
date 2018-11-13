Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show]

  resources :stores,  only: [:index, :show] do
    resources :bookings, only: [:new]
  end
  resources :bookings, only: [:show, :create]
end
