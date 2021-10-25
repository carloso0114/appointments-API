Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/show'
  get 'cars/show'
  get 'cars/new'
  get 'cars/create'
  get '/signup', to: 'users#new'

  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
