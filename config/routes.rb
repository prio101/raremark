Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'surveys#index'

  # api
  namespace :api do
    namespace :v1 do
      resources :surveys, only: [ :index, :create, :show ]
    end
  end

  # web
  resources :surveys, only: [ :index, :show ]

  resources :question_answers, only: [ :index, :show ]
end
