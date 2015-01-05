Rails.application.routes.draw do
  root 'manufacturers#index'
  resources :manufacturers, only: [:new, :index, :create, :show]
  resources :cars, only: [:new, :index, :create, :show]

end
