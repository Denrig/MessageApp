Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  get '/users/register' => 'users#register'
  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
  get '/chat_rooms' => 'chat_rooms#index'
end
