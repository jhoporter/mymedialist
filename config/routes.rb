Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get 'views' => 'views#index'
  get 'media' => 'media#index'
  get 'views/new' => 'views#new'
  post 'views' => 'views#create'
  get '/media/:id' => 'media#show'
  get 'signup' => 'users#new'
  resources :users
  post '/signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
