Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
  resources :users, only: [:show] do
    resources :chatrooms, only: :create
    resources :invitations, only: [:new, :create]
  end

  # resources :dogs, only: :show
  resources :dogs, only: [:index, :new, :create, :edit, :update, :show] do
    member do
      post 'toggle_favorite', to:
    "dogs#toggle_favorite"
    end
  end

  get 'dashboard', to: 'pages#dashboard'

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

  resources :invitations, only: [:index]
  patch "invitations/:id/accept", to: "invitations#accept", as: :accept_invitation
  delete "invitations/:id/decline", to: "invitations#decline", as: :decline_invitation
end
