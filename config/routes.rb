Rails.application.routes.draw do
  resources :cocktails, only: %w[index show new create]
end
