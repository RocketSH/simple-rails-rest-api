Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index' 
      get 'users/:id', to: 'users#show' 
      get 'users/:id/books', to: 'users#user_books' 
      get 'books', to: 'books#index'
      get 'books/:id', to: 'books#show' 
      patch 'books/:id', to: 'books#update'
      get 'books/:id/subjects', to: 'books#book_subjects' 
      get 'subjects', to: 'subjects#index'
      get 'subjects/:id', to: 'subjects#show' 
    end
  end
end
