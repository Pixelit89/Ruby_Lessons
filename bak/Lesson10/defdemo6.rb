move = [:left, :right, :up, :down]

def randomize_move

	a = rand(0..3)
	
end

def move_descr
	cmd = randomize_move
	if move[cmd] == :left
		puts "Получена команда #{cmd}"
		puts "Робот едет влево"
	elsif move[cmd] == :right
		puts "Получена команда #{cmd}"
		puts "Робот едет вправо"
	elsif move[cmd] == :up
		puts "Получена команда #{cmd}"
		puts "Робот едет вверх"
	elsif move[cmd] == :down
		puts "Получена команда #{cmd}"
		puts "Робот едет вниз"
	end

	
end



move_descr
