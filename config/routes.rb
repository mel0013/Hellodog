Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :dogs, only: :index do
    member do
      post 'toggle_favorite', to:
    "dogs#toggle_favorite"
    end
  end
end
