class SolicitationBookmarksController < ApplicationController
  before_action :set_solicitation_bookmark, only: [:show, :edit, :update, :destroy]

  # GET /solicitation_bookmarks
  # GET /solicitation_bookmarks.json
  def index
    @solicitation_bookmarks = SolicitationBookmark.all
  end

  # GET /solicitation_bookmarks/1
  # GET /solicitation_bookmarks/1.json
  def show
  end

  # GET /solicitation_bookmarks/new
  def new
    @solicitation_bookmark = SolicitationBookmark.new
  end

  # GET /solicitation_bookmarks/1/edit
  def edit
  end

  # POST /solicitation_bookmarks
  # POST /solicitation_bookmarks.json
  def create
    @solicitation_bookmark = SolicitationBookmark.new(solicitation_bookmark_params)

    respond_to do |format|
      if @solicitation_bookmark.save
        format.html { redirect_to @solicitation_bookmark, notice: 'Solicitation bookmark was successfully created.' }
        format.json { render :show, status: :created, location: @solicitation_bookmark }
      else
        format.html { render :new }
        format.json { render json: @solicitation_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitation_bookmarks/1
  # PATCH/PUT /solicitation_bookmarks/1.json
  def update
    respond_to do |format|
      if @solicitation_bookmark.update(solicitation_bookmark_params)
        format.html { redirect_to @solicitation_bookmark, notice: 'Solicitation bookmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitation_bookmark }
      else
        format.html { render :edit }
        format.json { render json: @solicitation_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitation_bookmarks/1
  # DELETE /solicitation_bookmarks/1.json
  def destroy
    @solicitation_bookmark.destroy
    respond_to do |format|
      format.html { redirect_to solicitation_bookmarks_url, notice: 'Solicitation bookmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitation_bookmark
      @solicitation_bookmark = SolicitationBookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitation_bookmark_params
      params.require(:solicitation_bookmark).permit(:user_id, :solicitation_id)
    end
end
