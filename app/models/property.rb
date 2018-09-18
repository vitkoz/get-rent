class Property < Company
  belongs_to :client
  
  has_many :addresses
  has_many :phones
  has_many :emails
  has_many :websites
end
