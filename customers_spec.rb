require 'minitest/autorun'
require 'minitest/rg'
require_relative'../customer'



class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new("Ryan", 1000)
    @customer2 = Customer.new("Emma", 200)
    @customer3 = Customer.new("Drew", 500)

    @customers = [@customer1, @customer2, @customer3]

  end

  def test_customer_name
    assert_equal("Ryan", @customer1.customer_name)
  end

  def test_customer_wallet
    assert_equal(1000, @customer1.customer_wallet)
  end


end