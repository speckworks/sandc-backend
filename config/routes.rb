Rails.application.routes.draw do
  resources :userbeaches
  resources :reviews
  resources :favbeaches
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
