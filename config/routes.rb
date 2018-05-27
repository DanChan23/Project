Rails.application.routes.draw do

  get 'sessions/new'

  devise_for :users
	get 'people/new/:id' => 'people#new'
  get 'reservations/new/:id' => 'reservations#new'
  #post 'logins/find' => 'logins#find'

  get 'signup', to: 'accounts#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  #resources :users
  resources :sessions

  #resources :logins
  resources :payments
  resources :reservations
  resources :accounts
  resources :people
  resources :units
  resources :types
  resources :buildings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
