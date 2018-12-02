class Person < ApplicationRecord

  has_many :addresses
  has_many :phones
  has_many :emails

  accepts_nested_attributes_for :addresses,  allow_destroy: true,
    :reject_if => proc { |attr| attr[:address_1].blank?  }
  accepts_nested_attributes_for :phones, allow_destroy: true,
    :reject_if => proc { |attr| attr[:phone_number].blank?  }
  accepts_nested_attributes_for :emails, allow_destroy: true,
    :reject_if => proc { |attr| attr[:email].blank?  }

  validates :first_name, presence: { message: 'is required' }
  validates :last_name, presence: { message: 'is required' }
  # validates :name, uniqueness: {scope: :organization_id}

  def full_name
    "#{first_name} #{last_name}"
  end

end
