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
	age = params[:pin]
	name = params[:retrieved_name]
	redirect '/fav_numbers?name=' + name +"&age=" + age
end

get '/fav_numbers' do
	name = params[:name]
	age = params[:age]
	erb :favorite_numbers, :locals => {:name => name, :age => age}
end

