puts "Добро пожаловать в игру 'Однорукий Бандит'!"

balance = 100

base = {
	111 => [*:+, 10],
	222 => [*:+, 20],
	333 => [*:+, 30],
	444 => [*:+, 40],
	555 => [*:+, 50],
	666 => [*:-, 60],
	777 => [*:-, 70],
	888 => [*:-, 80],
	999 => [*:-, 90],
	000 => [*:*, 0],
	123 => [*:-, 123]
}

def animation
	20.times do
		print "#{rand(100..999)}\r"
		sleep 0.03
	end

end

loop do |x|

	puts "Нажмите Enter чтобы играть!"
	gets
	animation
	a = rand(100..999)
	puts a
	if base[a]
		balance = balance.public_send(base[a][0], base[a][1])
		puts "Ваш баланс изменен! #{base[a][0]}#{base[a][1]}$"
	else
		balance = balance - 5
		puts "Игра то не бесплатная. (-5$)"
	end

	puts "Ваш счет : #{balance}$/."

	if balance <= 0
		puts "Доигрался, кушать на что будешь что?"
		exit
	end

end