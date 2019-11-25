Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :reservations, :restaurants, :orders, :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
