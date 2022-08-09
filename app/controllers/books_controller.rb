class BooksController < ApplicationController

  def edit
    @book = Book.find(params[:id])
  end

  def index
    @booker = Book.new
    @books = Book.all
  end

  def create
    @booker = Book.new(book_params)
    if @booker.save
       redirect_to book_path(@booker.id)
       flash[:notice] = "successfully"
    else
       @books = Book.all
       render :index
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path
    flash[:notice] = "successfully"
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
    flash[:notice] = "successfully"
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
