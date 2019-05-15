Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new] do
    resources :reviews, only: [:new, :create]
  end
end
