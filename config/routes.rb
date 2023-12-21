Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  resources :denounces do
    resources :messages
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
