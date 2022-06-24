# # simple-rails-rest-api

A simple practice that how to create the rest API in the rails framework.

* System dependencies:
  - Ruby 3.0.3
  - Rails 7.0.3
  - PostgreSQL 14.3

* Usage
  After git clone, please run `bundle install` & `bin/rails db:setup` & `bin/rails server`
  > `db:setup` stands for `db:create & db:migrate & db:seed`

* Generate User Login Token
  - please use `POST` method to send a request to URL `http://localhost:3000/auth/login` 
  - request params with test account `username: Joshua 1` & `password: password1`
  - then you will get a `token` in response body

---
  below to be update

  - all users
    - by pasting this URL `http://localhost:3000/api/v1/users` in your browser or in postman with `GET` method, and get the response of a JSON: 
  ```json
    [
      {
          "id": 1,
          "username": "Joshua 1",
          "password": "password",
          "created_at": "2022-06-21T16:24:01.413Z",
          "updated_at": "2022-06-21T16:24:01.413Z"
      },
      {
          "id": 2,
          "username": "Joshua 2",
          "password": "password",
          "created_at": "2022-06-21T16:24:01.458Z",
          "updated_at": "2022-06-21T16:24:01.458Z"
      }
    ]
  ```

  - all books
    - by pasting this URL `http://localhost:3000/api/v1/books` in your browser or in postman with `GET` method, and get the response of a JSON: 
    ```json
    [
      {
          "id": 1,
          "user_id": 1,
          "book": "Testing Book 1",
          "likes_books": 1,
          "created_at": "2022-06-21T16:24:01.490Z",
          "updated_at": "2022-06-21T16:24:01.490Z"
      },
      {
          "id": 2,
          "user_id": 1,
          "book": "Testing Book 2",
          "likes_books": 2,
          "created_at": "2022-06-21T16:24:01.523Z",
          "updated_at": "2022-06-21T16:24:01.523Z"
      },
      {
          "id": 3,
          "user_id": 2,
          "book": "Testing Book 3",
          "likes_books": 3,
          "created_at": "2022-06-21T16:24:01.528Z",
          "updated_at": "2022-06-21T16:24:01.528Z"
      },
      {
          "id": 4,
          "user_id": 2,
          "book": "Testing Book 4",
          "likes_books": 4,
          "created_at": "2022-06-21T16:24:01.534Z",
          "updated_at": "2022-06-21T16:24:01.534Z"
      }
    ]
    ```

  - all books belong to user_id: 1
    - by pasting this URL `http://localhost:3000/api/v1/users/1/books` in your browser or in postman with `GET` method, and get the response of a JSON: 
    ```json
    [
      {
          "id": 1,
          "user_id": 1,
          "book": "Testing Book 1",
          "likes_books": 1,
          "created_at": "2022-06-21T16:24:01.490Z",
          "updated_at": "2022-06-21T16:24:01.490Z"
      },
      {
          "id": 2,
          "user_id": 1,
          "book": "Testing Book 2",
          "likes_books": 2,
          "created_at": "2022-06-21T16:24:01.523Z",
          "updated_at": "2022-06-21T16:24:01.523Z"
      }
    ]
    ```
