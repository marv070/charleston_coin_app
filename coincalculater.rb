def change(cents_received)
	coins = {}

	# money =  {:silver_dollar => 100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	# money.each do |coin_type, coin_value|

		if cents_received >= 100
			coins[:silver_dollar] = cents_received / 100
			cents_received = cents_received % 100
		end
		if cents_received >= 50
			coins[:half_dollar] = cents_received / 50
			cents_received = cents_received % 50
		end
		if cents_received >= 25
			coins[:quarter] = cents_received / 25
			cents_received = cents_received % 25
		end
		if cents_received >= 10
			coins[:dime] = cents_received / 10
			cents_received = cents_received % 10
		end
		if cents_received >= 5
			coins[:nickel] = cents_received / 5
			cents_received = cents_received % 5
		end
		if cents_received >= 1
			coins[:penny] = cents_received / 1
		end
	coins
end

def hashconverter(coins)
	change = ""
	coins.each do |key, value|
		change << " " + value.to_s + " " + key.to_s
	end
	change
end



	









