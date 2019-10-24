Rails.application.routes.draw do
  root 'static_pages#home'
  get 'user/new', to: 'user#new'
  get 'user/create', to: 'user#create'
  get 'user/show', to: 'user#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
