puts "Сколько Вам лет?"
age = gets.strip.to_i

if age < 18
	puts "Тебе еще рано."
	exit
end

puts "Будем играть?(Y/N)"
ans = gets.strip.upcase

if age >= 18 && ans == "Y"
	puts "Давай поиграем!"
end

if age >= 18 && ans == "N"
	puts "Как хочешь."	
end