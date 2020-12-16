class ComicbooksController < ApplicationController
  before_action :set_comicbook, only: [:show, :update, :destroy]

  # GET /comicbooks
  def index
    @comicbooks = Comicbook.all

    render json: @comicbooks
  end

  # GET /comicbooks/1
  def show
    render json: @comicbook
  end

  # POST /comicbooks
  def create
    @comicbook = Comicbook.new(comicbook_params)

    if @comicbook.save
      render json: @comicbook, status: :created, location: @comicbook
    else
      render json: @comicbook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comicbooks/1
  def update
    if @comicbook.update(comicbook_params)
      render json: @comicbook
    else
      render json: @comicbook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comicbooks/1
  def destroy
    @comicbook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comicbook
      @comicbook = Comicbook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comicbook_params
      params.require(:comicbook).permit(:title, :image_url, :publisher, :artist, :writer)
    end
end
