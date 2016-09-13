require "minitest/autorun"
require_relative "Coin_Changer.rb"

class TestCoinChanger < Minitest::Test

	def test_0_cents_returns_empty_hash
		cents_recieved = 0
		assert_equal({}, change(cents_recieved))
	end

	# def test_1_cent_returns_penny
	# 	cents_recieved = 1
	# 	assert_equal({:penny => 1}, change(cents_recieved))
	# end

	# def test_2_cents_returns_2_pennies
	# 	cents_recieved = 2
	# 	assert_equal({:penny => 2}, change(cents_recieved))
		
	# end

	def test_25_cents_returns_quarter
		cents_recieved = 25
		assert_equal({:quarter => 1}, change(cents_recieved))
	end
	def test_75_cents_returns_3_quarters
		cents_recieved = 75
		assert_equal({:quarter => 3}, change(cents_recieved))
	end
	def test_20_cents_returns_2_dimes
		cents_recieved = 20
		assert_equal({:dime => 2}, change(cents_recieved))
	end


end

