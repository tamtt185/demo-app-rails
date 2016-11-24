Rails.application.routes.draw do
  root 'static_pages#home'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  get '/showall', to: 'entries#show'
  resources :users
  resources :entries
  resources :sessions
end
