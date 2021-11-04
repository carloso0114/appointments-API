Rails.application.routes.draw do
  get '/users', to: 'users#index'
  
  post '/signup', to: 'users#create'
  
  resources :cars
  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
