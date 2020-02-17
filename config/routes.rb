Rails.application.routes.draw do
  get 'questions/ask'
  get 'questions/answer'
  get '/ask', to: 'questions#ask', as: :about
  get '/answer', to: 'questions#answer'
end
