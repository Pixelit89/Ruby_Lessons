require 'sinatra'

get '/' do
	erb :index
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