class Animal
	def initialize name
		@name = name
	end
	def run
		puts "#{@name} is running"
	end
	def jump
		puts "Jumping"
	end
end

class Cat < Animal
	def initialize
		super ('Cat')		
	end
end

class Dog < Animal

end

cat1 = Cat.new

cat1.run