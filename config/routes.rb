Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
 
  resources :users do
    resources :skills
    resources :reservations, only: [:create, :show]
    resources :messages, only:[:create, :show]
  end

end
