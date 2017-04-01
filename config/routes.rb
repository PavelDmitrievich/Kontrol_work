Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/index'

  get 'comments/show'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'images/new'

  get 'images/show'

  get 'images/index'

  devise_for :users
  get 'users/index'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
