# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :products, only: %i[index create update]
  resources :cart_products, only: %i[index create update]

  root to: 'products#index'
end
