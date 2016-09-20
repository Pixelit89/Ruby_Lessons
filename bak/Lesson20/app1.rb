require "sinatra"

get '/' do
	erb :index
end
get '/contacts' do
	@title = 'Contacts'
	@message = 'Phone number : 1231245645'
	erb :message
end
get '/faq' do
	@title = 'FAQ'
	@message = 'Under construction'
	erb :message
end
get '/something' do
	@title = 'Something'
	@message = 'Some message'
	erb :message
end

def under_construction
	@title = 'Under construction'
	@message = 'This page is under construction'

	erb :message	
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