Rails.application.routes.draw do

  resources :questions
  resources :users
  get '/tags/find' => 'tags#find'
  resources :tags

  get 'vote' => 'votes#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get '/unanswered' => 'questions#index'

  root  'questions#index'

  get '/search' => 'searches#index'


end
