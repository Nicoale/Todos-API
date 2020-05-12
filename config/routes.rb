Rails.application.routes.draw do
namespace :api do 
  namespace :v0 do 
    resources :pings, only[:index], constraints: {format: 'json'}
  end
end
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
