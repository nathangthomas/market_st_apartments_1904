class Apartment
  attr_reader :apartment, :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apartment)
    @apartment = apartment
    @number = ""
    @monthly_rent = 0
    @bathrooms = 0
    @bedrooms = 0
    @renter = renter
  end

  def number
    @number << apartment[:number]
  end

  def monthly_rent
    @monthly_rent += apartment[:monthly_rent]
  end

  def bathrooms
    @bathrooms += apartment[:bathrooms]
  end

  def bedrooms
    @bedrooms += apartment[:bedrooms]
  end

  def add_renter(renter)
    @renter = renter
  end
end
