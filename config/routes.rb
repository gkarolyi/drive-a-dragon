Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: :show
  resources :vehicles, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :show do
    resources :reviews, only: [ :new, :create ]
  end
  resources :bookings, only: :update
end
