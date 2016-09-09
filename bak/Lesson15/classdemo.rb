class Song
	attr_accessor :name, :duration
	def initialize name, duration
		@name = name
		@duration = duration
	end
end

song1 = Song.new "Show must go on!", 5
puts song1.name
puts song1.duration	