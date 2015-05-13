class ActorsController < ApplicationController
  def index
    @actors = Actor.page(params[:page])
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_row
    a = Actor.new
    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]

    a.save

    redirect_to ("http://localhost:3000/actors/#{a.id}")
  end

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("show")
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
  end
end
#
