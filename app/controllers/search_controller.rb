class SearchController < ApplicationController
  def index
  end

  def results
    @genre = Genre.find(search_params[:genre])
    @wordcount = search_params[:wordcount]

    solicitations = Solicitation.all
      .of_genre(search_params[:genre].to_i)
      .accepting_wordcount(search_params[:wordcount].to_i)

    @publishers = solicitations.map(&:publisher)
  end

  private

  def search_params
    params.require(:search).permit(:genre, :wordcount)
  end
end
