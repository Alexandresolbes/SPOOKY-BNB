class ReviewsController < ApplicationController
  before_action :set_booking, only: %i[new create]

  def new
    if @booking.status == 'past'
      @listing = @booking.listing
      @review = Review.new
      authorize @review
    else
      redirect_to bookings_path, notice: "Can't create a review"
    end
  end

  def create
    @review = Review.new(reviews_params)
    @review.booking = @booking
    authorize @review
    if @review.save!
      redirect_to bookings_path, notice: "Review created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:title, :content, :rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
