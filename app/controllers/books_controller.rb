class BooksController < ApplicationController
before_action :authenticate_user!

  def index
  end

  def show
    @book = Book.find(params[:id])
    @grouped_ingredients = @book.recipes.map(&:ingredients).flatten.group_by { |ingredient| ingredient.name }
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name", layout: "book",
          page_size: 'Letter',
          margin: { right: 1, left: 1, top: 2, bottom: 2 },
          dpi: 96
      end
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book)
    else
      flash[:errors] = @book.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  private  
  def book_params
    params.require(:book).permit(:title, :intro, recipe_ids:[])
  end
end

