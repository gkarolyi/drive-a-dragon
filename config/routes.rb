Rails.application.routes.draw do
  resources :messages
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: :show
  resources :messages, only: [:index, :show, :new, :create]
  resources :vehicles, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
