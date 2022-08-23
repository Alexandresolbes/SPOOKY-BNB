class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]
  before_action :set_listing, only: [:create, :new]

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    if @booking.save!
      redirect_to @booking, notice: "Booking created !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_host_path, notice: "Status updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :listing_id, :status)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
