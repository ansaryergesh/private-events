Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'show/:id', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
