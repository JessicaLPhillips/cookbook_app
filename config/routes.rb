Rails.application.routes.draw do
	root to: 'home#index'
  resources :groups, except: [:update]
  resources :recipes, except: [:update]
  resources :ingredients
  devise_for :users, controllers: {
    registrations: 'users/registrations', sessions: 'users/sessions'}
end
