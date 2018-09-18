class Client < Company
  has_many :properties
  
  has_many :addresses
  has_many :phones
  has_many :emails
  has_many :websites
end
