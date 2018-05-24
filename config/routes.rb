Rails.application.routes.draw do
  get 'draft_list/list'

  root   'static_pages#home'
  #get    '/list'     to: 'draft_list#list'
  
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  resources :microposts,          only: [:create, :destroy]

end