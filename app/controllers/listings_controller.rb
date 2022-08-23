class ListingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :destroy, :update, :edit]

  def index
    @listings = Listing.all
  end

  def show
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: "Updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save!
      redirect_to @listing, notice: "Listing created !"
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :max_guests, :price_per_night)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
