require 'sinatra'

get '/' do
	erb :index
end

get '/admin' do
	erb :admin
end

post '/admin' do
	@login = params[:login]
	@password = @params[:password]
	if @login == 'admin' && @password == 'pass'
		@users_list = File.open("./users.txt", "r")
		erb :admin
	else
		@mess = 'Неверный логин и/или пароль'
		erb :admin
	end
end

post '/getList' do
	
	erb :getList
end

post '/' do
	@name = params[:first_name]
	@last_name = params[:last_name]
	@date = params[:date]
	@phone = params[:phone]

	@title = 'Thank you'
	@message = "Dear #{@name} #{@last_name}. We will be waiting you on #{@date}."

	f = File.open 'users.txt', 'a'
	f.write "#{@name} #{@last_name}, #{@phone}, #{@date}\n"
	f.close
	erb :message
end
get '/admin' do

end