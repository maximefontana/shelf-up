Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/create'
  get 'messages/update'
  get 'messages/destroy'


  devise_for :users

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end


  # # authenticated :user do
  # #   root 'users#show', as: :authenticated_root
  # # end

  # as :user do
  #   get 'users', :to => 'users#show', :as => :user_root # Rails 3
  # end

  root to: 'pages#home'
  get 'home', to: 'pages#home', as: :home

  resources :users, only: [:show]

  resources :stores do
    resources :bookings, only: [:new, :create]
    resources :ratings, only: :create
  end
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :messages, only: [:new, :create, :destroy]
  end
end
