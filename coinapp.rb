require_relative 'Coin_changer.rb'

require 'sinatra'

get '/' do
	erb :introduction
end

post '/name' do
	name = params[:user_name] 
	redirect '/pin?users_name=' + name
end

get '/pin' do
	name = params[:users_name].capitalize
	erb :bankpin, :locals => {:name => name}
end


post '/pin' do
	pin = params[:pin]
	name = params[:retrieved_name]
	redirect '/deposit?name=' + name +"&pin=" + pin
end

get '/deposit' do
	name = params[:name]
	pin = params[:pin]
	erb :deposit, :locals => {:name => name, :pin => pin}
end

post '/deposit' do
	pin = params[:pin]
	name = params[:retrieved_name]
	deposit = params[:deposit]
	coins = change(deposit.to_i)
	stuff = hashconverter(coins)
	"Thank you #{name}, you have deposited #{stuff}"
end




# [:silver_dollar]} silver dollars, #{coins[:half_dollar]} half dollars, #{coins[:quarter]} quarters, #{coins[:dime]} dimes, #{coins [:nickel]}, and #{coins [:penny]} pennies"