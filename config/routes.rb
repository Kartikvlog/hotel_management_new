Rails.application.routes.draw do

  get 'admins/index'

  get 'admins/new'

  get 'admins/show'

  get 'admins/edit'

  root to: 'homes#index'

  resources :billings 

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
