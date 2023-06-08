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
      redirect_to spaces_path
    else
      render :new, see_other: :unprocessable_entity
    end
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
    @bookings = @space.bookings
  end

  def update
    @space = Space.find(params[:id])
    @space.user = current_user
    @space.update(space_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to bookings_path
  end

  def edit
    @space = Space.find(params[:id])
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to bookings_path, status: :see_other
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :photos, :description, :availability, :price)
  end
end
