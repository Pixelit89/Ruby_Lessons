require "sinatra"

get '/' do
	erb :index
end

post '/' do
	@login = params[:login]
	@password = params[:password]
	@denied = 'Access denied!'
	if @login == 'admin' && @password == 'password'
		erb :welcome
	else
		erb :index
	end
end