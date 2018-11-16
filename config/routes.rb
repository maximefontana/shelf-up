Rails.application.routes.draw do
  devise_for :users

  # # authenticated :user do
  # #   root 'users#show', as: :authenticated_root
  # # end

  # as :user do
  #   get 'users', :to => 'users#show', :as => :user_root # Rails 3
  # end

  root to: 'pages#home'
  get 'home', to: 'pages#home', as: :home

  resources :users, only: [:show, :update]

  resources :stores do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
