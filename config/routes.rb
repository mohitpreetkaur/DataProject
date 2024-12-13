Rails.application.routes.draw do
  get 'members/show'
  resources :characters, only: [:index]
  resources :films, only: [:show]
  resources :users, only: [:show]
  root 'characters#index'
  get "up" => "rails/health#show", as: :rails_health_check
  get '/about', to: 'about#index'
  get 'members/:id', to: 'members#show', as: 'member'
end
