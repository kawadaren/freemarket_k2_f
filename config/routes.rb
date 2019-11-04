Rails.application.routes.draw do

  devise_for :users
  root 'items#index'



  resources :items, only: [:index, :new, :show] do
    get 'buyconfirm'
  end

  namespace :users do
    resources :sign_up, only: [:index] do
      collection do
        get 'info'
        get 'tel'
        get 'address'
        get 'pay'
        get 'comp'
        get 'regist_user'
      end
    end
  end

  resources :users, only: [:index, :edit, :show] do
    member do
      get 'logout'
      get 'creditcard'
      get 'addcreditcard'
    end
  end
end
