class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save
    redirect_to space_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:name, :adddress, :photo, :description, :availability, :price)
  end

end
