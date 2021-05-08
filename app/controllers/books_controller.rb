class BooksController < ApplicationController

  def start
  end
  
  
  def index
    @newbooks = Book.all
  end
  
  
  def create
    book_path = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end


  def show
    @newbook = Book.find(params[:id])
  end
  
  
  def edit
    @newbook = Book.find(params[:id])
  end


  def destroy
   book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

 private

  def book_params
    params.require(:book).permit(:title, :body)
  end

 end