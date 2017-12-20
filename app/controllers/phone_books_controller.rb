class PhoneBooksController < ApplicationController
  before_action :set_phone_book, only: [:show, :edit, :update, :destroy, :import]

  # GET /phone_books
  # GET /phone_books.json
  def index
    @phone_books = PhoneBook.all
  end

  # GET /phone_books/1
  # GET /phone_books/1.json
  def show
    @entries = @phone_book.phone_book_entries.order(:name)
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
        notice = t('successful.messages.created', model: PhoneBook.model_name.human)
        format.html { redirect_to @phone_book, notice: notice }
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
        notice = t('successful.messages.updated', model: PhoneBook.model_name.human)
        format.html { redirect_to @phone_book, notice: notice }
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
      notice = t('successful.messages.deleted', model: PhoneBook.model_name.human)
      format.html { redirect_to phone_books_url, notice: notice }
      format.json { head :no_content }
    end
  end

  # GET /phone_books/1/import
  # POST /phone_books/1/import
  def import
    if request.post?

    else
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
