Rails.application.routes.draw do
  get 'login/create'
  resources :userbeaches
  resources :reviews
  resources :beaches, only: [:index]
  resources :users, only: [:show, :index, :create]
  resources :login, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
