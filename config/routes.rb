# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cocktails, only: %w[index show new create] do
    resources :doses, only: :create
  end
  resources :doses, only: :destroy
end
