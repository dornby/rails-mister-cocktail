# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %w[show new create] do
    resources :doses, only: :create
  end
  resources :doses, only: :destroy
end
