Rails.application.routes.draw do
	root to: 'home#index'
  resources :groups
  resources :recipes
  resources :books
  resources :ingredients
  resources :profiles
  devise_for :users, controllers: {
    registrations: 'users/registrations', sessions: 'users/sessions'}
end
