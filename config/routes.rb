Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users


     root 'welcome#hello'

     resources :users
     resources :attractions

     get '/signin', to: 'sessions#new'
     post '/signin', to: 'sessions#create'
     delete '/signout', to: 'sessions#destroy'

     post '/rides/new', to: 'rides#new'
end
