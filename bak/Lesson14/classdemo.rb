class Animal
	def run
		puts "I'm running"
	end

	def stop
		puts "Now I stop"
	end
end

a = Animal.new
a.run
b = Animal.new
b.run
a.stop