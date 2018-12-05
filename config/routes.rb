Rails.application.routes.draw do

  resources :suits do
    get 'update_cases'
  end
  resources :clients
  resources :properties
  resources :courts

  resources :renters

  devise_for :users
  resources :users

  root to: 'home#dashboard'
end
