Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  get '/signup', to: 'users#create'
  root 'static_pages#home'
end
