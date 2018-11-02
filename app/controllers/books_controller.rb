class BooksController < ApplicationController
before_action :authenticate_user!

  def index
    @books = current_group.books.all
  end

  def show
    @book = current_user.book.find(params[:id])
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
# does not work...
  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end
end

