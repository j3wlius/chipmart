Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#index"

  resources :products

  namespace :cart do
    resources :items
  end
end
