Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'images#index'
  resources :users, only: [:show, :index]

  resources :images do 
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
