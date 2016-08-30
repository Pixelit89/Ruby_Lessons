def randomize_move

	a = rand(1..4)
	cmd = ""
	if a == 1
		cmd = :left
	elsif a == 2
		cmd = :right
	elsif a == 3
		cmd = :up
	elsif a == 4
		cmd = :down
	end
	cmd
end

def move_descr
	cmd = randomize_move
	if cmd == :left
		puts "Получена команда #{cmd}"
		puts "Робот едет влево"
	elsif cmd == :right
		puts "Получена команда #{cmd}"
		puts "Робот едет вправо"
	elsif cmd == :up
		puts "Получена команда #{cmd}"
		puts "Робот едет вверх"
	elsif cmd == :down
		puts "Получена команда #{cmd}"
		puts "Робот едет вниз"
	end

	
end



move_descr
