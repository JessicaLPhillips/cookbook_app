Rails.application.routes.draw do
	root to: 'home#index'
  resources :groups 
  resources :recipes
  resources :books do
    member do 
      get "small_show"
    end
  end
  resources :ingredients
	get "profiles", to: "profiles#show"
  put "profiles", to: "profiles#update"
  patch "profiles", to: "profiles#update"
  get "profiles/edit", to: "profiles#edit"

  devise_for :users, controllers: {
    registrations: 'users/registrations', sessions: 'users/sessions'}
end
