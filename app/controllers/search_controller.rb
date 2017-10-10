class SearchController < ApplicationController
  def index
  end

  def results
    @solicitations = Solicitation.all
      .of_genre(search_params[:genre].to_i)
      .accepting_wordcount(search_params[:wordcount].to_i)
  end

  private

  def search_params
    params.require(:search).permit(:genre, :wordcount)
  end
end
