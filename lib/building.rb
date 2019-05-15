class Building
  attr_reader :units

  def initialize()
    @units = []
  end

  def add_unit(unit)
    @units.push(unit)
  end

  def average_rent
    total_monthly_rent = @units.map do |apartment|
      apartment.monthly_rent
    end.sum.to_f/@units.count
  end

  def renter_with_highest_rent
    total_renters = @units.max_by do |apartment|
      apartment.montly_rent
  end
end
