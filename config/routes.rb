Rails.application.routes.draw do



  root 'items#index'

  # resources :users, only: [:index, :show]
  resources :items, only: [:index, :new]

  get 'users/logout'
  get 'users/creditcard'
  get 'users/addcreditcard'
  resources :users, only: [:index, :show, :edit]


end
