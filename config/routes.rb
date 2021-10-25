Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/show'

  get '/users', to: 'users#index'
  post '/signup', to: 'users#create'
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
