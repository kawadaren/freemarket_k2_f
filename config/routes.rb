Rails.application.routes.draw do

  root 'items#index'
  resources :users, only: [:index, :show, :edit]
  resources :items, only: [:index, :new, :show]


end
