class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: %i[show update destroy]

  def index
    @books = User.find(@current_user.id).books
    render json: @books
    puts params
  end

  def show
    if @book&.user_id == @current_user.id
      render json: @book
    else
      render json: { error: 'Only owner can access this book.' }, status: :bad_request
    end 
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render error: { error: 'Unable to create Book.' }, status: :unprocessable_entity
    end
  end

  def update
    if @book&.user_id == @current_user.id
      @book.update(book_params)
      render json: { message: 'Book successfully update.' }, status: :ok
    else
      render json: { error: 'Unable to update Book.' }, status: :unprocessable_entity
    end
  end

  def destroy
    if @book&.user_id == @current_user.id
      @book.destroy
      render json: { message: 'Book successfully deleted.' }, status: :ok
    else
      render json: { error: 'Unable to delete Book.' }, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:book_name, :likes, :user_id)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
