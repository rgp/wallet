Rails.application.routes.draw do
  root 'application#delegator'

  # Session routes
  post 'login' => 'application#new_session', as: :login
  get 'logout' => 'application#destroy_session', as: :logout

  resources :transactions
  resources :pockets
  resources :users
end
