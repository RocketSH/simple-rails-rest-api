class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only: %i[show user_books update destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /user/:id
  def show
    render json: @user, status: :ok
  end

  def user_books
    render json: @user.books, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { error: 'Unable to creat user.' }, status: :unprocessable_entity
    end
  end

  # PUT /users/:id
  def update
    if @user 
      @user.update(user_params)
      render json: { message: 'User successfully update.' }, status: :ok
    else
      render json: { error: 'Unable to update user.' }, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    if @user 
      @user.destroy(user_params)
      render json: { message: 'User successfully deleted.' }, status: :ok
    else
      render json: { error: 'Unable to delete user.' }, status: :bad_request
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
