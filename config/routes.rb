Rails.application.routes.draw do
  root to: 'images#index'
  resources :images do
    resources :tags
  end
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/account/:id' => 'users#show', :as => :user
  get '/account/:id/edit' => 'users#edit', :as => :edit_user
  patch '/account/:id' => 'users#patch'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

end
