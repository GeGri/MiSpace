class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to root_path
    else
      render :new, see_other: :unprocessable_entity
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :photo, :description, :availability, :price)
  end

end
