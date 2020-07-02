Rails.application.routes.draw do
  #ENTER SITE
  root 'users#index'
  
  #USER ROUTES
  get '/users/register' => 'users#register'
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'

  #ROOMS ROUTES
  get '/chat_rooms' => 'chat_rooms#index'
  get '/chat_rooms/new' => 'chat_rooms#new'
  get '/chat_rooms/:id' => 'chat_rooms#show'
  post '/chat_rooms' => 'chat_rooms#create'
  #MESSAGES ROUTES
  post '/messages/:id' => 'message#create'
  get '/messages/:id' => 'message#index'

end
