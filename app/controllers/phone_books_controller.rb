class PhoneBooksController < ApplicationController
  before_action :set_phone_book, only: [:show, :edit, :update, :destroy]

  # GET /phone_books
  # GET /phone_books.json
  def index
    @phone_books = PhoneBook.all
  end

  # GET /phone_books/1
  # GET /phone_books/1.json
  def show
  end

  # GET /phone_books/new
  def new
    @phone_book = PhoneBook.new
  end

  # GET /phone_books/1/edit
  def edit
  end

  # POST /phone_books
  # POST /phone_books.json
  def create
    @phone_book = PhoneBook.new(phone_book_params)

    respond_to do |format|
      if @phone_book.save
        format.html { redirect_to @phone_book, notice: 'Phone book was successfully created.' }
        format.json { render :show, status: :created, location: @phone_book }
      else
        format.html { render :new }
        format.json { render json: @phone_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_books/1
  # PATCH/PUT /phone_books/1.json
  def update
    respond_to do |format|
      if @phone_book.update(phone_book_params)
        format.html { redirect_to @phone_book, notice: 'Phone book was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_book }
      else
        format.html { render :edit }
        format.json { render json: @phone_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_books/1
  # DELETE /phone_books/1.json
  def destroy
    @phone_book.destroy
    respond_to do |format|
      format.html { redirect_to phone_books_url, notice: 'Phone book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_book
      @phone_book = PhoneBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_book_params
      params.require(:phone_book).permit(:title)
    end
end
