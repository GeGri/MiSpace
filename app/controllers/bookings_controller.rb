class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @booking.save
  #   redirect_to booking_path(@booking)
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = @space

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking created successfully.'
    else
      render :new
    end
  end

  def reserve
    @booking = Booking.new(space: @space, user: current_user)
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking reserved successfully.'
    else
      redirect_to booking_path(@booking), alert: 'Failed to reserve booking.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end
end
