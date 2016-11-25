Rails.application.routes.draw do
  root 'static_pages#home'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  get '/add', to: 'entries#new'
  get '/showall', to: 'entries#show'
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :entries, only: [:create, :new, :destroy]
  resources :sessions
  resources :relationships, only: [:create, :destroy]
end
