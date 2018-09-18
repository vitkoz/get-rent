Rails.application.routes.draw do

  resources :clients

  resources :properties

  resources :websites
  resources :emails
  resources :phones
  resources :addresses
  resources :people

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
