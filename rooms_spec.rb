require 'minitest/autorun'
require 'minitest/rg'
require_relative('../room')
require_relative('../customer')


class TestRooms< Minitest::Test

  def setup

    @single_room = Room.new('single room', 60, 1, 'booked')
    @double_room = Room.new('double', 130, 6, 'available')

    @customer1 = Customer.new("Derek", 5000)
    @customer2 = Customer.new("Yoshie", 400)
    @customer3 = Customer.new("Claire", 250)

    @customer = []

  end

  def test_how_much_is_a_single_room
    assert_equal(60, @single_room.price)
  end


  def test_what_number_is_single_room
    assert_equal(1, @single_room.number)
  end

  def test_room_type
    assert_equal("single room", @single_room.type)
  end

  def test_check_in
    @single_room.check_in(@customer1)
    assert_equal([@customer1], @single_room.current_guest)
  end

  def test_check_out
    @double_room.check_in(@customer2)
    assert_equal([@customer2], @double_room.current_guest)
  end

  

 




end