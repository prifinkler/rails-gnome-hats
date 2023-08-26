class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create, :update]

  def new
    @review = Review.new
  end

  def create
    @hat = @booking.hat
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.hat = @hat
    @review.save
    redirect_to hat_path(@hat), notice: 'Review was successfully created'
end

def show
  @review = Review.find(params[:id])
end

  private
  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
