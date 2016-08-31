print "Вы довольны своей зарплатой?(1/0)"

answer = gets.strip.upcase.to_i

if answer == 1
	puts "Очень хорошо"
	elsif answer == 0
	puts "Очень плохо"
	else
	puts "Не стесняйся, ответь"
end
