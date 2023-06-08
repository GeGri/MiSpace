class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
    @spaces = current_user.spaces
  end

  def new
    @booking = Booking.new
    @space = Space.find(params[:space_id])
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = @space
    if @booking.save
      redirect_to bookings_path
    else
      render "spaces/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    @booking.update(booking_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to bookings_path, status: :see_other
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end
end
