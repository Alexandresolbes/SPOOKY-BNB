class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :user_id, presence: true
  validates :listing_id, presence: true
end
