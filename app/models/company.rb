class Company < ApplicationRecord

  has_many :addresses
  has_many :phones
  has_many :emails
  has_many :websites

  accepts_nested_attributes_for :addresses,  allow_destroy: true,
    :reject_if => proc { |attr| attr[:address_1].blank?  }
  accepts_nested_attributes_for :phones, allow_destroy: true,
    :reject_if => proc { |attr| attr[:phone_number].blank?  }
  accepts_nested_attributes_for :emails, allow_destroy: true,
    :reject_if => proc { |attr| attr[:email].blank?  }
  accepts_nested_attributes_for :websites, allow_destroy: true,
    :reject_if => proc { |attr| attr[:website].blank?  }

  validates :name, presence: { message: 'is required' }
  # validates :name, uniqueness: {scope: :organization_id}

end
