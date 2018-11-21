Rails.application.routes.draw do

  resources :clients

  resources :properties
  resources :courts

  resources :websites
  resources :emails
  resources :phones
  resources :addresses
  resources :people

  devise_for :users
  resources :users

  root to: 'home#dashboard'
end
