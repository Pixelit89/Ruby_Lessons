class Album
	attr_reader :songs, :name
	def initialize name
		@name = name
		@songs = []
	end
	def add_song song
		@songs << song
	end
end

class Song
	attr_reader :name, :duration
	def initialize name, duration
		@name = name
		@duration = duration
	end
end

class Artist
	attr_reader :name, :albums
	def initialize name
		@name = name
		@albums = []
	end

	def add_album album
		@albums << album		
	end
end

artist1 = Artist.new("Linkin Park")

album1 = Album.new("Hybrid Theory")

song1 = Song.new("Faint", "3.22")
song2 = Song.new("Numb", "4.12")
song3 = Song.new("One step closer", "3.43")


album1.add_song(song1)
album1.add_song(song2)
album1.add_song(song3)

artist1.add_album(album1)

puts "#{artist1.name}, album : #{album1.name}"
album1.songs.each do |song|
	puts "#{song.name} : #{song.duration}"
end