Rails.application.routes.draw do

  resources :questions
  resources :users
  resources :tags

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get '/unanswered' => 'questions#index'

  root  'questions#index'

  get '/search' => 'searches#index'


end
