class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :status, inclusion: { in: %w(pending active cancelled past) }
end
