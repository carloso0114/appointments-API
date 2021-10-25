Rails.application.routes.draw do
  get 'cars/show'
  get 'cars/new'
  get 'cars/create'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
