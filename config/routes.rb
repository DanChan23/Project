Rails.application.routes.draw do

	get 'people/new/:id' => 'people#new'

  resources :payments
  resources :reservations
  resources :accounts
  resources :people
  resources :units
  resources :types
  resources :buildings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
