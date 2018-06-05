class BookController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
        redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
    @book = book.find(params[:id])
  end

  def destroy
    @book = book.find(params["id"])

    @book.destroy

    redirect_to books_path
  end

  private

  def artist_params
    params.require(:book).permit(:name)
  end
end
