Rails.application.routes.draw do
  resources :groups, except: [:update, :create,]
  devise_for :users
  root to: "home#index"
end
