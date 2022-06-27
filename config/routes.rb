# frozen_string_literal: true

Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'

  namespace :api do
    namespace :v1 do
      resources :users

      get 'books', to: 'books#index'
      get 'books/:id', to: 'books#show'
      patch 'books/:id', to: 'books#update'
    end
  end
end
