Rails.application.routes.draw do
  get 'attendances/new'
  get 'attendances/create'
  get 'attendances/destroy'
  get 'events/create'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/new/event', to: 'events#new'
  post '/new/event', to: 'events#create'
  get '/events', to: 'events#index'
  resources :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
