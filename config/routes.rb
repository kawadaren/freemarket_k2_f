Rails.application.routes.draw do

  root 'items#index'

  resources :items, only: [:index, :new]
  resources :users, only: [:index, :edit, :show] do
    member do
      get 'logout'
      get 'creditcard'
      get 'addcreditcard'
    end
  end

end
