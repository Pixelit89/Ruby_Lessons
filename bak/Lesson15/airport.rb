class Airport
	attr_reader :name, :airplanes
	def initialize name
		@name = name
		@airplanes = []
	end

	def add_airplane airplane
		@airplanes << airplane
	end
end

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

class Country
	attr_reader :name, :airports
	def initialize name
		@name = name
		@airports = []
	end
	def add_airport airport
		@airports << airport
	end
end


airport1 = Airport.new("JFK")
airport2 = Airport.new("LAX")
airports = [airport1, airport2]
models = ["Airbus-320", "Boeing-747", "IL-86"]
3.times do |airplane|
	airplane = Airplane.new(models[rand(0..2)])
	airport1.add_airplane(airplane.model)
	airplane = Airplane.new(models[rand(0..2)])
	airport2.add_airplane(airplane.model)
end

airports.each do |airport|
	planes = airport.airplanes.join(", ")

	puts "Airport - #{airport.name} has #{airport.airplanes.length} planes :\n #{planes}"
end

country1 = Country.new("USA")

country1.add_airport airport1
country1.add_airport airport2

puts "#{country1.name} has #{country1.airports.length} airports."