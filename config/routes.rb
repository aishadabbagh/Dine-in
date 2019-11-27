Rails.application.routes.draw do
  devise_for :users
  root "restaurants#index"
  resources :home
  resources :reservations do
    resources :orders
  end
  resources  :restaurants do
    resources :foods
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
