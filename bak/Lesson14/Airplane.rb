class Airplane
	attr_reader :model #модель
	attr_reader :altitude #высота
	attr_reader :speed #скорость

	def initialize model
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?
		speed > 0		
	end

end

models = ["Airbus-320", "Boeing-747", "IL-86"]
planes = []

1000.times do
	model = models[rand(0..2)]
	plane = Airplane.new(model)
	planes << plane

	if rand(0..1) == 1
		plane.fly
	end

end

planes.each do |plane|
	puts "Model : #{plane.model}, speed : #{plane.speed}, altitude : #{plane.altitude}."
	puts "Is moving? #{plane.moving?}"
end

