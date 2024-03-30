Rails.application.routes.draw do
  namespace :admin do
    resources :order_units, only: [:index, :create]
  end

  resources :order_units, only: [:show], param: :code do
    resources :orders, only: :create do
      resource :complete, only: :create
    end
    resources :order_histories, only: :index
  end
end
