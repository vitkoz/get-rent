Rails.application.routes.draw do

  resources :suits
  resources :clients
  resources :properties
  resources :courts

  resources :renters

  resources :websites
  resources :emails
  resources :phones
  resources :addresses

  devise_for :users
  resources :users

  root to: 'home#dashboard'
end
