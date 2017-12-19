class PhoneBookEntriesController < ApplicationController
  before_action :set_phone_book_entry, only: [:show, :edit, :update, :destroy]

  # GET /phone_book_entries
  # GET /phone_book_entries.json
  def index
    if params[:q].present?
      @phone_book_entries = PhoneBookEntry.search(params[:q])
    else
      @phone_book_entries = PhoneBookEntry.all
    end
  end

  # GET /phone_book_entries/1
  # GET /phone_book_entries/1.json
  def show
  end

  # GET /phone_book_entries/new
  def new
    @phone_book_entry = PhoneBookEntry.new
  end

  # GET /phone_book_entries/1/edit
  def edit
  end

  # POST /phone_book_entries
  # POST /phone_book_entries.json
  def create
    @phone_book_entry = PhoneBookEntry.new(phone_book_entry_params)

    respond_to do |format|
      if @phone_book_entry.save
        format.html { redirect_to @phone_book_entry, notice: 'Phone book entry was successfully created.' }
        format.json { render :show, status: :created, location: @phone_book_entry }
      else
        format.html { render :new }
        format.json { render json: @phone_book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_book_entries/1
  # PATCH/PUT /phone_book_entries/1.json
  def update
    respond_to do |format|
      if @phone_book_entry.update(phone_book_entry_params)
        format.html { redirect_to @phone_book_entry, notice: 'Phone book entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_book_entry }
      else
        format.html { render :edit }
        format.json { render json: @phone_book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_book_entries/1
  # DELETE /phone_book_entries/1.json
  def destroy
    @phone_book_entry.destroy
    respond_to do |format|
      format.html { redirect_to phone_book_entries_url, notice: 'Phone book entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_book_entry
      @phone_book_entry = PhoneBookEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_book_entry_params
      params.require(:phone_book_entry).permit(:phone_book_id, :name, :phone_office, :phone_mobile, :phone_other)
    end
end
