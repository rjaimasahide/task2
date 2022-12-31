Rails.application.routes.draw do

  #ユーザーログイン
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup',  to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  resources :books
  resources :users
end
