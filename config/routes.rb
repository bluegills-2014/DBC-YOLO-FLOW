Rails.application.routes.draw do

  resources :questions
  resources :users, except: :destroy
  get '/tags/find' => 'tags#find'
  resources :tags, except: [:destroy, :edit]
  # resources :answers, except: :index
  post '/questions/:id/answers' => 'answers#create'

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
