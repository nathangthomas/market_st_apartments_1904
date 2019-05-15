require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'


class BuildingTest < MiniTest::Test
  def setup
    @building = Building.new

    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    @b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

  end

  def test_does_building_exist

    assert_instance_of Building, @building
  end

  def test_does_building_have_empty_units

    assert_equal [], @building.units
  end

  def test_building_has_filled_units
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal [@a1, @b2], @building.units
  end

  def test_calculate_the_average_rent
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal 1099.5, @building.average_rent
  end

  def test_who_has_the_highest_rent
    spencer = Renter.new("Spencer")
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal spencer, @building.renter_with_highest_rent
  end
end

#
# pry(main)> b2.add_renter(spencer)
#
# pry(main)> building.add_unit(a1)
#
# pry(main)> building.add_unit(b2)
#
# pry(main)> building.renter_with_highest_rent
# # => #<Renter:0x00007fa83bc37978...>
#
# pry(main)> jessie = Renter.new("Jessie")
# # => #<Renter:0x00007fa83b9b0358...>
#
# pry(main)> a1.add_renter(jessie)
#
# pry(main)> building.renter_with_highest_rent
# # => #<Renter:0x00007fa83b9b0358...>
