Rails.application.routes.draw do
  get "/experts/searchPreview/:search_term", to: 'experts#search_preview'
  get "/questions/searchPreview/:search_term", to: 'questions#search_preview'
  get '/tags/match/:tag_term', to: 'tags#match'
  resources :tag_questions
  resources :tags
  resources :answers
  resources :questions
  resources :users
  resources :educations
  resources :work_experiences
  resources :experts
  resources :user_auth, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :questions, only: [:index]
  end
end
