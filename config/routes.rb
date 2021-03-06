Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'images#index'
  resources :users, only: [:show]

  resources :images do 
    resources :posts
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
