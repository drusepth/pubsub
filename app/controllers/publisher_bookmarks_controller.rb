class PublisherBookmarksController < ApplicationController
  before_action :set_publisher_bookmark, only: [:show, :edit, :update, :destroy]

  # GET /publisher_bookmarks
  # GET /publisher_bookmarks.json
  def index
    @publisher_bookmarks = PublisherBookmark.all
  end

  # GET /publisher_bookmarks/1
  # GET /publisher_bookmarks/1.json
  def show
  end

  # GET /publisher_bookmarks/new
  def new
    @publisher_bookmark = PublisherBookmark.new
  end

  # GET /publisher_bookmarks/1/edit
  def edit
  end

  # POST /publisher_bookmarks
  # POST /publisher_bookmarks.json
  def create
    @publisher_bookmark = PublisherBookmark.new(publisher_bookmark_params)

    respond_to do |format|
      if @publisher_bookmark.save
        format.html { redirect_to @publisher_bookmark, notice: 'Publisher bookmark was successfully created.' }
        format.json { render :show, status: :created, location: @publisher_bookmark }
      else
        format.html { render :new }
        format.json { render json: @publisher_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publisher_bookmarks/1
  # PATCH/PUT /publisher_bookmarks/1.json
  def update
    respond_to do |format|
      if @publisher_bookmark.update(publisher_bookmark_params)
        format.html { redirect_to @publisher_bookmark, notice: 'Publisher bookmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @publisher_bookmark }
      else
        format.html { render :edit }
        format.json { render json: @publisher_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publisher_bookmarks/1
  # DELETE /publisher_bookmarks/1.json
  def destroy
    @publisher_bookmark.destroy
    respond_to do |format|
      format.html { redirect_to publisher_bookmarks_url, notice: 'Publisher bookmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publisher_bookmark
      @publisher_bookmark = PublisherBookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publisher_bookmark_params
      params.require(:publisher_bookmark).permit(:user_id, :publisher_id)
    end
end
