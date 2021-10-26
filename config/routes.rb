Rails.application.routes.draw do
  # resources :devstrs
  # resources :devlangs
  # resources :developers
  resources :users, only: %i[create index show]
  
  post '/users/login', to: 'users#login'
  post '/job', to: 'job#apireq'
  get '/info', to: 'information#apireq'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
