class Property < Company
  belongs_to :client
  has_many :renters
end
