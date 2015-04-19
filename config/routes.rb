Rails.application.routes.draw do

  root to: 'sites#index'

  resources :sites

  resources :events, only: [:create]
  
end
