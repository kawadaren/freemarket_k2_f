Rails.application.routes.draw do

  root 'items#index'

  resources :items, only: [:index, :new, :show] do
    get 'buyconfirm'
  end
  resources :users, only: [:index, :edit, :show] do
    member do
      get 'logout'
      get 'creditcard'
      get 'addcreditcard'
      get 'sign_up'
      get 'sign_up_tel'
      get 'sign_up_address'
      get 'sign_up_pay'
      get 'sign_up_comp'
    end
  end


end
