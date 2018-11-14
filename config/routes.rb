Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :users, only: [:show, :update]

  resources :stores,  only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
