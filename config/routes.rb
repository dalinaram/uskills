Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :skills do
    collection do
      get :search
    end
    resources :skills, only: [:create, :show, :edit, :update, :destroy]
  end

  resources :users do
    resources :reviews, only: [:create, :show, :edit, :update, :destroy]
    resources :reservations
    resources :messages, only:[:create, :show]
  end

end
