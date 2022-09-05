Rails.application.routes.draw do
  # resources :react_apis
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :react_apis, only: [:index, :show, :create, :update, :destroy]

end
