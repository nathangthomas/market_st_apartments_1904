require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
  def setup
    @jessie = Renter.new("Jessie")
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_does_apartment_exist

    assert_instance_of Apartment, @a1
  end

  def test_renter_has_name

    assert_equal "Jessie", @jessie.name
  end

  def test_apartment_has_number

    assert_equal "A1", @a1.number
  end

  def test_apartment_has_rent

    assert_equal 1200, @a1.monthly_rent
  end

  def test_appartment_has_rooms

    assert_equal 1, @a1.bathrooms
    assert_equal 1, @a1.bedrooms
  end

  def test_there_is_a_renter
      @a1.add_renter(@jessie)

      assert_equal @jessie, @a1.renter
  end
end
