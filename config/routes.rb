Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'genres#main'
  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', as: :genre

  get '/sub_genres/:id' => 'sub_genres#show', as: :sub_genre

  get '/quizzes/:id' => 'quizzes#show', as: :quiz

  get '/questions/:id' => 'questions#show', as: :question
  post '/questions/submit/:id' => 'questions#submit'

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

  get '/scores' => 'scores#index'
  get '/scores/genre/:id' => 'scores#show_by_genre'
  get '/scores/sub_genre/:id' => 'scores#show_by_subgenre'

end
