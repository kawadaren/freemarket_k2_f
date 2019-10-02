Rails.application.routes.draw do

  root 'items#index'
  get 'users/logout'
  resources :users, only: [:index, :show, :edit]
end
