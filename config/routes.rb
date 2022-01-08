Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show] do
    resources :chatrooms, only: :create
  end
  resources :dogs
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
end
