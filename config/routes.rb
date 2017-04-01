Rails.application.routes.draw do
  get 'images/new'

  get 'images/show'

  get 'images/index'

  devise_for :users
  get 'users/index'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
