Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', as: :genre

  get '/sub_genres/:id' => 'sub_genres#show', as: :sub_genre

  get '/quizzes/:id' => 'quizzes#show', as: :quiz

  get '/questions/:id' => 'questions#show', as: :question
end
