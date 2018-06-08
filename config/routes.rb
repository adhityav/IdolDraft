Rails.application.routes.draw do
  get 'draft_list/list'

  #functional routes
  root   'static_pages#home'
  get    '/draft_list',            to: 'static_pages#draft_list'
  get    '/group_rankings',        to: 'static_pages#group_rankings'
  get    '/line_distributions',    to: 'static_pages#line_distributions'

  #to be removed or changed
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

end
