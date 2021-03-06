Rails.application.routes.draw do
  
  root to: 'users#index'

  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]
  resources :hashtags, only: :show, param: :text
  resources :hashtags, only: :show, param: :answer
end