Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :skills
    resources :reservations, only: [:create, :show]
    resources :messages, only:[:create, :show]
  end
  resources :formations
  # Defines the root path route ("/")
  # root "articles#index"
end
