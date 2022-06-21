class Api::V1::UsersController < ApplicationController
  before_action set_user, only: %i[show update destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /user/:id
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { error: 'Unable to creat user.' }, status: 400
    end
  end

  # PUT /users/:id
  def update
    if @user 
      @user.update(user_params)
      render json: { message: 'User successfully update.' }, status: 200
    else
      render json: { error: 'Unable to update user.' }, status: 400
    end
  end

  # DELETE /users/:id
  def destroy
    if @user 
      @user.destroy(user_params)
      render json: { message: 'User successfully deleted.' }, status: 200
    else
      render json: { error: 'Unable to delete user.' }, status: 400
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
