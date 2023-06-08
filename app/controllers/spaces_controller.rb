class SpacesController < ApplicationController

  def index
    if params[:query].present?
      @spaces = Space.search_by_name_and_description(params[:query])
    else
      @spaces = Space.all
    end
    # @spaces = Space.all
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to spaces_path
    else
      render :new, see_other: :unprocessable_entity
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :photos, :description, :availability, :price)
  end
end
