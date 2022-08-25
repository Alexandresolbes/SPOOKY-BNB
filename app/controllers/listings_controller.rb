class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :destroy, :update, :edit]

  def index
    @listings = policy_scope(Listing)
    @listings = Listing.all
  end

  def show
    authorize @listing
    @markers = [
      {
        lat: @listing.latitude,
        lng: @listing.longitude,
        info_window: render_to_string(partial: "info_window", locals: {listing: @listing}),
        image_url: helpers.asset_url("thriller.png")
      }]
    @user = current_user
    @booking = Booking.new
  end

  def edit
    authorize @listing
  end

  def update
    authorize @listing
    if @listing.update(listing_params)
      redirect_to @listing, notice: "Updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @listing = Listing.new
    authorize @listing

  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save!
      redirect_to @listing, notice: "Listing created !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @listing
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :max_guests, :price_per_night, photos: [])
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
