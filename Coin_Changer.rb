def change(cents_recieved)
	coins = {}
	if cents_recieved >= 1
		coins[:penny] = cents_recieved
	elsif cents_recieved >= 5
		coins[:nickel] = cents_recieved
	elsif cents_recieved >= 10
		coins[:dime] = cents_recieved
	elsif cents_recieved >= 25
		coins[:quarter] = cents_recieved
	end
	coins




	
end
