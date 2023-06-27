Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:update, :post, :show, :create]

  resources :prestations, only: [:index, :create, :show, :new, :edit, :update, :destroy]

  resources :customers, only: [:index, :create, :show, :new, :edit, :update, :destroy]

  resources :services, only: [:index, :create, :show, :new, :edit, :update, :destroy]
end
