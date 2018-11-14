Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  get 'home', to: 'pages#home', as: :home

  resources :users, only: [:show, :update]

  resources :stores do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
