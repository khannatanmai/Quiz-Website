Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', as: :genre

  get '/sub_genres/:id' => 'sub_genres#show', as: :sub_genre

  get '/quizzes/:id' => 'quizzes#show', as: :quiz

  get '/questions/:id' => 'questions#show', as: :question

  get '/signup' => 'users#new'
  resources :users
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  delete '/users/:id' => 'users#destroy'
  patch '/users/:id' => 'users#update'
  get '/users/:id/edit' => 'users#edit'

end
