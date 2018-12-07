class Property < Company
  belongs_to :client
  has_many :renters
  has_many :filings
end
