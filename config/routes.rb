Rails.application.routes.draw do

  root to: 'homes#index'

  resources :rooms

  devise_for :users

  resources :users

  resources :reservations

  get 'homes/show'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/home'
  
end
