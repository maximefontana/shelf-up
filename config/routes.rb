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
  get 'status/accept/:id', to: 'bookings#status_accept', as: :accept_booking
  get 'status/decline/:id', to: 'bookings#status_decline', as: :decline_booking

  resources :users, only: [:show, :update]

  resources :stores do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :edit, :update]
end
