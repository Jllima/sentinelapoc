Rails.application.routes.draw do
  root 'home#index'

  get 'messages/new'
  get 'messages/create'
  resources :denounces do
    resources :messages
  end
  get 'up' => 'rails/health#show', as: :rails_health_check
end
