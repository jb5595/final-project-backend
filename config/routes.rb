Rails.application.routes.draw do
  resources :profile_views
  resources :reviews
  resources :answer_upvotes
  resources :question_upvotes
  resources :expert_tags
  get "/experts/searchPreview/:search_term", to: 'experts#search_preview'
  get "/questions/searchPreview/:search_term", to: 'questions#search_preview'
  get "/experts/suggested_questions/:expert_id", to: 'experts#suggested_questions'
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
  resources :questions, only: [:show] do
    resources :question_upvotes, only: [:index]
  end
  resources :answers, only: [:show] do
    resources :answer_upvotes, only: [:index]
  end
  resources :experts, only: [:show] do
    resources :work_experiences, only: [:index, :create, :update, :destroy]
    resources :educations, only: [:index, :create, :update, :destroy]
    resources :reviews, only: [:index]
    resources :profile_views, only: [:index, :create]

  end
end
