class MovieSessionsController < ApplicationController
  def index
    @movie_sessions = MovieSession.page(params[:page]).per(10)
  end  
end
