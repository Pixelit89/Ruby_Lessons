neededFile = ""
directory = ''
puts "Enter name of file you need : "
neededFile = gets.strip
@stop = false
@iterator = 0


def searchEngine neededFile, directory = 'C:/'
	entries = []
	filesArr = []
	dirArr = []

	Dir.chdir directory 

	entries = Dir.entries Dir.pwd
	entries.delete (".")
	entries.delete ("..")


	entries.each do |item|
		name = item.split('.')
		if name.length == 2 && name[1].length > 1
			filesArr << name 
		elsif Dir.exist?(item)
			dirArr << item
		end
	end
	# puts Dir.pwd
	# puts dirArr
	# gets
	filesArr.each do |item|
		puts "Found! Your file is here \"#{Dir.pwd}\/#{item[0]}.#{item[1]}\""	if item[0] == neededFile
		@stop = true if item[0] == neededFile
	end
	exit if @stop

	dirArr.each do |item|
		if dirArr.length == 0
			break
		end
		if searchEngine neededFile, item
		else
			Dir.chdir File.dirname(Dir.pwd)
		end
	end

	Dir.chdir File.dirname(Dir.pwd)
end
searchEngine neededFile
puts "File is not found"