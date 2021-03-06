Rails.application.routes.draw do
  get 'products/index'
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only:[:new, :create]
end
