game  = %w[rock scissors paper]

def compare(game, usrch, cpuch)
	puts "Your choice > #{game[usrch]}, CPU choice > #{game[cpuch]}"
	comp = usrch - cpuch
	if usrch == cpuch
		puts "TIE!"
	elsif comp == -1 || comp == 2
		puts "YOU WIN!!!!!!"
	else
		puts "You lost!"
	end
end

puts "Rock Scissors Paper championship!!! Lets GO!!!"
print "Enter your choise! (R = 1, S = 2, P = 3) >>> "
num = gets.to_i

usrch = num-1

cpuch = rand(0..2)

compare(game, usrch, cpuch)

