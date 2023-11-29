Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :skills

  resources :users do
    resources :reservations, only: [:create, :show]
    resources :messages, only:[:create, :show]
  end


end
