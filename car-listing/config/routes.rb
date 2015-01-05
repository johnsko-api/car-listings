Rails.application.routes.draw do
  root 'manufacturers#index'
  resources :manufacturers, only: [:new, :index, :create]
  

end
