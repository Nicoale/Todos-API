Rails.application.routes.draw do
  devise_for :users
  namespace :v1, default: { format: :json } do
    mount_devise_token_auth_for 'User', at: 'auth', skip: %i[omniauth_callbacks]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
