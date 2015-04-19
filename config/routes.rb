Rails.application.routes.draw do

  devise_for :users
  root to: 'sites#index'

  resources :sites

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end
  
end
