Rails.application.routes.draw do
  resources :users
  root :to => 'subscribers#new'
  resources :subscribers

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
