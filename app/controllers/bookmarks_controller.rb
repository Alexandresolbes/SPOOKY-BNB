class BookmarksController < ApplicationController
  def index
    @bookmarks = policy_scope(Bookmark)
    @bookmarks = Bookmark.where(user_id: current_user.id)
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @bookmark = Bookmark.new(listing_id: @listing.id, user_id: current_user.id)
    authorize @bookmark
    if @bookmark.save!
      redirect_to @bookmark, notice: "Listing successfully added to your favorites."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    if @bookmark.destroy!
      redirect_to listings_path, notice: "Listing successfully suppressed from your favorites."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
