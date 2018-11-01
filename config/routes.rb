Rails.application.routes.draw do
  resources :groups, except: [:update, :create,]
  root to: "home#index"
  get 'ingredients/new'
  get 'ingredients/create'
  resources :recipes
  devise_for :users, controllers: {
    registrations: 'users/registrations'}
end
