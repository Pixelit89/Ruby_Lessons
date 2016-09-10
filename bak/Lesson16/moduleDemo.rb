module Humans
	class Manager
		def self.say_hi
			puts "Hi!"
		end
	end
	class Hipster
		def self.say_hi
			puts "Hiiiiii, yo!"
		end
	end
	class Jessie_Pinkman
		def self.say_hi
			puts "Hi, bitch!"
		end
	end
end

hipster = Humans::Hipster.new