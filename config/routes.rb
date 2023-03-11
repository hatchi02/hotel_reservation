Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  
  get 'users/sign_in', to: 'users#aign_in'
  get 'users/sign_up', to: 'users#sign_up'
  get 'users/account', to: 'users#account'
  get 'users/profile', to: 'users#profile'
  resources :users, only: [:edit, :update]

  resources :rooms
  
  resources :reservations, only: [:index, :edit, :update, :destroy]
end
