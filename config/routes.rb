Rails.application.routes.draw do
  resources :denounces
  get "up" => "rails/health#show", as: :rails_health_check
end
