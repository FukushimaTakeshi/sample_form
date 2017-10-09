Rails.application.routes.draw do

  get 'other_users/new', as: 'other_user'
  post 'other_users/new', to: 'other_users#create'

  resources :users

end
