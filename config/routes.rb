Rails.application.routes.draw do
  get '/upload', to: 'courses#new'
  post '/upload', to: 'courses#create'

  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #for sign up
  get '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/tree', to: 'users#tree'
  get '/chartjs', to: 'users#chartjs'
  get '/calendar', to: 'users#calendar'
  get '/todo_list', to: 'users#todo_list'
  get 'gallery', to: 'users#gallery'
  
  #for basic link
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  #get  '/choose',  to: 'static_pages#choose'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
  resources :courses
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
end
