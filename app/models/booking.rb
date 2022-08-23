class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :reviews, dependent: :destroy
  validates :status, inclusion: { in: %w(pending active cancelled past) }
end
