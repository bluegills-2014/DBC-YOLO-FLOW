Rails.application.routes.draw do
  resources :questions
  resources :users
  resources :tags

  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'
  get '/unanswered' => 'questions#index'


end
