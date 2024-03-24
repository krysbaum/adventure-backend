class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
    render :index
  end
end
