class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.director_id = params[:director_id]

    m.save

    redirect_to ("http://localhost:3000/movies/#{m.id}")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    m = Movie.find(params[:id])

    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.director_id = params[:director_id]
    m.save

    redirect_to ("http://localhost:3000/movies/#{m.id}")
  end

  def destroy
    m = Movie.find(params[:id])

    m.destroy
  end
end
 ##
