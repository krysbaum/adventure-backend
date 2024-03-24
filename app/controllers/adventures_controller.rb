class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
    render :index
  end

  def create
    @adventure = Adventure.create(
      name: params[:name],
      description: params[:description],
      rating: params[:rating],
      location: params[:location],
      category: params[:category],
      date: params[:date],
    )
    render :show
  end

  def show
    @adventure = Adventure.find_by(id: params[:id])
    render :show
  end

  def update
    @adventure = Adventure.find_by(id: params[:id])
    @adventure.update(
      name: params[:name] || @adventure.name,
      description: params[:description] || @adventure.description,
      rating: params[:rating] || @adventure.rating,
      location: params[:location] || @adventure.location,
      category: params[:category] || @adventure.category,
      date: params[:date] || @adventure.date,
    )
    render :show
  end

  def destroy
    @adventure = Adventure.find_by(id: params[:id])
    @adventure.destroy
    render json: { message: "Deleted post!" }
  end
end
