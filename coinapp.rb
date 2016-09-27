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
	coins = Coin_Changer(deposit.to_i)
	"Thank you #{name}, you have deposited #{coins}"
end



