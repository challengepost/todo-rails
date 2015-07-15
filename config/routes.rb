require 'sidekiq/web'

TodoRails::Application.routes.draw do
  resources :foos
  resources :todos

  devise_for :users

  mount Sidekiq::Web => '/sidekiq'
  root to: 'home#hello'
end
