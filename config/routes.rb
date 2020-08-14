# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  devise_for :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
end
