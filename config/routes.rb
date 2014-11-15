Rails.application.routes.draw do
  root 'application#login'

  resources :transactions
  resources :pockets
  resources :users
end
