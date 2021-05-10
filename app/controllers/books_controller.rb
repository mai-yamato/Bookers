class BooksController < ApplicationController

  def start
  end


  def index
    @newbooks = Book.all
    @newbook = Book.new
  end


  def create
    @newbook = Book.new(books_params)

    if @newbook.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@newbook)
    else
      @newbooks = Book.all
      render :index
    end
  end


  def show
    @newbook = Book.find(params[:id])

  end


  def edit
    @newbook = Book.find(params[:id])
  end

  def update
    @newbook = Book.find(params[:id])
    @newbook.update(books_params)
    if @newbook.save
      flash[:notice] = "Book was successfully update."
      redirect_to book_path(@newbook)
    else
      @newbooks = Book.all
      render :index
    end


  end



  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

 private

  def books_params
    params.require(:book).permit(:title, :body)
  end

end