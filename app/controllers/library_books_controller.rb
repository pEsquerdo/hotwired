class LibraryBooksController < ApplicationController
  before_action :set_library_book, only: %i[ show edit update destroy ]

  # GET /library_books or /library_books.json
  def index
    @library_books = LibraryBook.all
  end

  # GET /library_books/1 or /library_books/1.json
  def show
  end

  # GET /library_books/new
  def new
    @library_book = LibraryBook.new
  end

  # GET /library_books/1/edit
  def edit
  end

  # POST /library_books or /library_books.json
  def create
    @library_book = LibraryBook.new(library_book_params)

    respond_to do |format|
      if @library_book.save
        format.html { redirect_to @library_book, notice: "Library book was successfully created." }
        format.json { render :show, status: :created, location: @library_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_books/1 or /library_books/1.json
  def update
    respond_to do |format|
      if @library_book.update(library_book_params)
        format.html { redirect_to @library_book, notice: "Library book was successfully updated." }
        format.json { render :show, status: :ok, location: @library_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_books/1 or /library_books/1.json
  def destroy
    @library_book.destroy
    respond_to do |format|
      format.html { redirect_to library_books_url, notice: "Library book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_book
      @library_book = LibraryBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def library_book_params
      params.require(:library_book).permit(:title, :status, :description, :status_date, :internal_info)
    end
end
