class BookmarksController < ApplicationController
  def index
    @bookmarks = policy_scope(Listing)
    @bookmarks = Bookmark.where(user_id: current_user.id)
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.listing = @listing
    @bookmark.user = current_user
    authorize @bookmark
    if @bookmark.save!
      redirect_to @bookmark, notice: "Listing successfully added to your favorites."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @bookmark
    @bookmark.destroy
    redirect_to bookmarks_path, status: :see_other
  end
end
