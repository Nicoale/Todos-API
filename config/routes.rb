frozen_string_literal: true.
Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do 
  namespace :v0 do 
    resources :pings, only[:index], constraints: { format: 'json' } 
    devise_for :users
  end
  namespace :v1, default: { format: :json } do
      mount_devise_token_auth_for 'User', at: 'auth', skip: %i[omniauth_callbacks]
  end
end
  root to: 'home#index'
end
