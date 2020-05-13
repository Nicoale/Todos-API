
Rails.application.routes.draw do 
namespace :api do 
  namespace :v0 do 
    namespace :v1, default: { format: :json } do
    resources :pings, only[:index], constraints: { format: 'json' } 
    devise_for :users
      mount_devise_token_auth_for 'User', at: 'auth', skip: %i[omniauth_callbacks]
      root to: 'home#index'
    end
  end
end
end
