

def randomize_move
	move = [:left, :right, :up, :down]
	a = rand(0..3)
	move[a]
end

def move_descr
	cmd = randomize_move
	puts "Получена команда #{cmd}"
	if cmd == :left
		puts "Робот едет влево"
	elsif cmd == :right
		puts "Робот едет вправо"
	elsif cmd == :up
		puts "Робот едет вверх"
	elsif cmd == :down
		puts "Робот едет вниз"
	end
end

move_descr
