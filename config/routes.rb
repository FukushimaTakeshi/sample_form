Rails.application.routes.draw do
  get '/active_model_user', to: 'users#new_active_model', as: 'active_model_user'
  post '/active_model_user', to: 'users#create_active_model'

  resources :users

end
