class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :reviews
  validates :status, inclusion: { in: %w(pending active cancelled past) }
end
