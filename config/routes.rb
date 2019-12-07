# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :products, only: %i[index new create edit update destroy]
  resources :cart_products, only: %i[index new create edit update destroy]

  root to: 'products#index'
end
