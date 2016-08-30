def animated_spin

	20.times do 

	a = rand(0..9)
	b = rand(0..9)
	c = rand(0..9)

	print "\r#{a} #{b} #{c}"

	sleep 0.07

	end

	print "\r"

end

puts "Добро пожаловать в игру ОДНОРУКИЙ БАНДИТ!"
puts "Сколько Вам лет?"
age = gets.strip.to_i
count = 0
if age < 18
	puts "Тебе еще рано."
	exit
end

puts "Будем играть?(Y/N)"
ans = gets.strip.upcase

if age >= 18 && ans == "Y"
	puts "Давай поиграем!"
	money = 100
	puts "Ваш баланс #{money}$"
	puts "Сколько раз хотите сыграть?"
	games = gets.strip.to_i
	puts "Старт через 3"
	sleep 1
	puts "Старт через 2"
	sleep 1
	puts "Старт через 1"
	sleep 1
	games.times do |i|

		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)
		puts "Выпало "
		print "#{animated_spin}"
		puts "#{x} #{y} #{z}"
		if x == y && y == z
			if x == 0
				
				puts "Ваш баланс обнулен!"
				money = 0
			end
			if x == 1
				puts "Зачислено 10$!"
				money = money + 10
			end
			if x == 2
				puts "Зачислено 20$!"
				money = money + 20
			end
			if x == 3
				puts "Зачислено 30$!"
				money = money + 30
			end
			if x == 4
				puts "Зачислено 40$!"
				money = money + 40
			end
			if x == 5
				puts "Зачислено 50$!"
				money = money + 50
			end
			if x == 6
				puts "Ваш баланс уменьшился вдвое"
				money = money / 2
			end
			if x == 7
				puts "Проиграно 70$!"
				money = money - 70
			end
			if x == 8
				puts "Проиграно 80$!"
				money = money - 80
			end
			if x == 9
				puts "Проиграно 90$!"
				money = money - 90
			end
		elsif x ==1 && y == 2 && z == 3
			puts "Проиграно 123$"
			money = money - 123			
		else
		
		end
		puts "Ваш баланс : #{money}$"
		if money <= 0
			puts "Вы банкрот!"
			break
		end
		count = i + 1
	end
	puts "Сыграно #{count} игр."
end

if age >= 18 && ans == "N"
	puts "Как хочешь."	
	exit
end

