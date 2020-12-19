Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :users, only: [:new, :edit, :update, :destroy]
  resources :products, only: [:index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
