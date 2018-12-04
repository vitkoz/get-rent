class Suit < ApplicationRecord
  belongs_to :court
  belongs_to :renter
end
