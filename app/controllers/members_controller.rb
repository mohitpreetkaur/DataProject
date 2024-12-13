class MembersController < ApplicationController
  def show
    @character = Character.find(params[:id])
    @films = @character.films
    @tv_shows = @character.tv_shows
    @video_games = @character.video_games
    @liking_users = @character.users
  end
end
