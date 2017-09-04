Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]
  resources :tags, only: :show, param: :alias
end
