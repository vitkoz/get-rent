Rails.application.routes.draw do

  resources :filings do
    get 'update_filings'
  end
  resources :clients
  resources :properties
  resources :courts

  resources :renters

  devise_for :users
  resources :users

  root to: 'home#dashboard'
end
