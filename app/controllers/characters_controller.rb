class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(20)
    if params[:search].present?
      @characters = @characters.where('characters.name LIKE ?', "%#{params[:search]}%")
    end
    if params[:category].present? && params[:category] != 'all'
      case params[:category]
      when 'films'
        @characters = @characters.joins(:films).where.not(films: { id: nil }).distinct
      when 'tv_shows'
        @characters = @characters.joins(:tv_shows).where.not(tv_shows: { id: nil }).distinct
      when 'video_games'
        @characters = @characters.joins(:video_games).where.not(video_games: { id: nil }).distinct
      end
    end
  end
end
