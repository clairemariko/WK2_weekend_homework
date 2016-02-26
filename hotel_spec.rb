require 'minitest/autorun'
require 'minitest/rg'
require_relative('../hotel')
require_relative('../customer')
require_relative('../room')

class TestHotel < Minitest::Test

  def setup
    @room_1 = Room.new('single', 60, 1, 'booked')
    @room_2 = Room.new('single', 60, 2, 'booked')
    @room_3 = Room.new('single', 60, 3, 'available')
    @room_4 = Room.new('single', 60, 4, 'available')
    @room_5 = Room.new('single', 60, 5, 'available')

    @room_6 = Room.new('double', 130, 6, 'available')
    @room_7 = Room.new('double', 130, 7, 'available')
    @room_8 = Room.new('double', 130, 8, 'available')
    @room_9 = Room.new('double', 130, 9, 'booked')
    @room_10 = Room.new('double', 130, 10, 'booked')

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6, @room_7, @room_8, @room_9, @room_10]  
    @hotel = Hotel.new(@rooms, 0)
  end

  def test_total_rooms
    result = @hotel.total_rooms()
    assert_equal( 10, result )
  end

  def test_total_revenue
    result = @hotel.total_revenue()
    assert_equal( 950, result )
  end

  # def test_total_rooms_available()
  #   rooms = @hotel.total_rooms_available('available')
  #   assert_equal([@room3, @room4, @room5], rooms)
  # end

  def test_is_single_room_available
    assert_equal("available", @room[:status])
  end
  

#   def test_hotel_till_starts_at_zero
#     assert_equal(0, @hotel.till)
#   end

# #####figure out why it wont pass
#   # def test_hotel_add_customer
#   #   assert_equal([@customer1], @hotel.add_customer(@customer1))
#   # end
 
#  def test_sell_single_room
#    assert_equal([@single_room], @hotel.sell_room(@single_room))
#  end

end