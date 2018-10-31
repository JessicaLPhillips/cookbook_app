Rails.application.routes.draw do
  get 'ingredients/new'
  get 'ingredients/create'
  resources :recipes
  devise_for :users, controllers: {
    registrations: 'users/registrations'}
  root to: "recipes#index"
end
