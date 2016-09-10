class Animal
	def initialize name
		@name = name
	end
	def run
		puts "#{@name} is running"
	end
	def jump
		eat
		puts "#{@name} is jumping"
	end

	private
	def eat
		puts "#{@name} is eating"
	end
	def sleep
		puts "I'm sleeping"
	end

end

class Dog < Animal
	def initialize
		super 'Dog'
	end
	def bark
		eat
		puts "Woof! Woof!"
		sleep
	end
end

dog = Dog.new

dog.bark