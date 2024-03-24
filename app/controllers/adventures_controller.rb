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
end
