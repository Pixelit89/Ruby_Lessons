@field_coords = {
	1 => "1",
	2 => "2",
	3 => "3",
	4 => "4",
	5 => "5",
	6 => "6",
	7 => "7",
	8 => "8",
	9 => "9"
}
@wins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
@moves = {
	"you" => "X",
	"cpu" => "O"
}
@player_collect = []
@cpu_collect = []
def move(place, who)
	@field_coords[place] = @moves[who]
end

def count_winner

	@wins.each do |item|
	  count = 0
	  @player_collect.each do |x|
	    if item.include?(x)
	      count += 1
	    end
	    break if count == 3
	  end
	  if count == 3
	    puts "Вы победили!"
	    exit
	  end
	  count = 0
	  @cpu_collect.each do |x|
	    if item.include?(x)
	      count += 1
	    end
	    break if count == 3
	  end
	  if count == 3
	    puts "Компьютер победил!"
	    exit
	  end
	end
	count = 0
	@field_coords.each_value do |x|
		if x.to_i == 0
			count +=1
		end
		if count == 9
			puts "Ничья!"
			exit
		end
	end
end

loop do
	field = "  #{@field_coords[1]} |#{@field_coords[2]} |#{@field_coords[3]} \n ----------\n  #{@field_coords[4]} |#{@field_coords[5]} |#{@field_coords[6]} \n ----------\n  #{@field_coords[7]} |#{@field_coords[8]} |#{@field_coords[9]} " #поле
	puts field
	count_winner

	print "Ваш ход, куда поставить крестик? "
	your_place = gets.to_i
	while @field_coords[your_place].to_i == 0 do 
		print "Это место уже занято. Выберите другое : "
		your_place = gets.to_i
	end
	move(your_place, "you")
	
	puts "Компьютер : \"А теперь мой ход!\""
	sleep 1
	cpu_place = your_place
	cpu_tryes = 0
	while cpu_place != @field_coords[cpu_place].to_i do 
		if cpu_tryes == 100
			puts "Некуда ставить нолик."
			break
		end	
		cpu_place = rand(1..9)
		cpu_tryes += 1
	end
	@player_collect.push(your_place)
	@cpu_collect.push(cpu_place)
	move(cpu_place, "cpu")

end