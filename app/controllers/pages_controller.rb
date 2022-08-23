class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def bookings_as_guest
    @bookings = Booking.where(user: current_user)
  end

  def bookings_as_host
    @listings = current_user.listings
    #@bookings = Booking.where(listing.user_id == current_user)
  end

end
