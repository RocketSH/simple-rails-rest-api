Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :users do
      #   resources :books
      # end
      get 'users', to: 'users#index' 
      get 'users/:id', to: 'users#show' 
      get 'users/:id/books', to: 'users#user_books' 
      get 'books', to: 'books#index'
      get 'books/:id', to: 'books#show' 
      get 'books/:id/subjects', to: 'books#book_subjects' 
      get 'subjects', to: 'subjects#index'
      get 'subjects/:id', to: 'subjects#show' 
    end
  end
end
