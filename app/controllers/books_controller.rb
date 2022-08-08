class BooksController < ApplicationController

  def edit
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
       redirect_to books_path
    else
       render :index
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
