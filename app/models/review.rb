class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, numericality: { in: 1..5 }
end
