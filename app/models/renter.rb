class Renter < Person
  belongs_to :property

  def to_s
    full_name
  end
end
