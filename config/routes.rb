Rails.application.routes.draw do
  get 'groups/new'
  get 'groups/create'
  get 'groups/edit'
  get 'groups/update'
  get 'groups/index'
  get 'groups/show'
  devise_for :users
  # root to: "home#index"
end
