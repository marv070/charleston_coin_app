require "minitest/autorun"
require_relative "Coin_Changer.rb"

class TestCoinChanger < Minitest::Test

	def test_0_cents_returns_empty_hash
		assert_equal({}, change(0))
	end
end

