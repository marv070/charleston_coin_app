require "minitest/autorun"
require_relative "Coin_Changer.rb"

class TestCoinChanger < Minitest::Test

	def test_0_cents_returns_empty_hash
		cents_recieved = 0
		assert_equal({}, change(cents_recieved))
	end

	def test_1_cent_returns_penny
		cents_recieved = 1
		assert_equal({:penny => 1}, change(cents_recieved))
	end

	def test_2_cents_returns_2_pennies
		cents_recieved = 2
		assert_equal({:penny => 2}, change(cents_recieved))
		
	end

end

