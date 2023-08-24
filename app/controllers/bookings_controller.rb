
class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]
  before_action :set_hat, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hat = @hat
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:hat_id, :user_id, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
  def set_hat
    @hat = Hat.find(params[:hat_id])
  end
end
