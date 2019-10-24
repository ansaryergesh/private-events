Rails.application.routes.draw do
  root 'static_pages#home'
  get 'users/new', to: 'users#new'
  get 'users/create', to: 'users#create'
  get 'users/show/:id', to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
