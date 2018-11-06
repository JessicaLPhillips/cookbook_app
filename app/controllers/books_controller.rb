class BooksController < ApplicationController
before_action :authenticate_user!

  def index

  end

  def show
  
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book), notice: "Book Created!"
    else
      render :new
  end

  def edit
  end

  def update
  end

  private  
  def book_params
 
  end
end
end
