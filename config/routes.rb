Rails.application.routes.draw do
  root 'static_pages#home'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :entries
  resources :sessions
end
