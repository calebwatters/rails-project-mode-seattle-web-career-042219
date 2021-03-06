Rails.application.routes.draw do
  get '/', to: 'car_posts#index'
  get 'sessions/new'
  resources :users
  resources :car_posts
  resources :reviews, only: [:create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
