Rails.application.routes.draw do
  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout' , to:'sessions#destroy'
  resources :users
  get 'topics/logout_index' ,to:'topics#logout_index'
  root to:'topics#index'
  delete '/topics/destroy/:id', to:'topics#destroy', as: :topics_destroy
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topics/create', to:'topics#create' 
  post 'post/create', to:'post#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
