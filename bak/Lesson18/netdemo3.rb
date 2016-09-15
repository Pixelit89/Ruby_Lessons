require 'net/http'
require 'uri'

def brutForce pass


	
end

uri = URI.parse 'http://rubyschool.us/router'
response = Net::HTTP.post_form uri, { 'login' => 'admin', 'password' => 'password'}
puts response.body