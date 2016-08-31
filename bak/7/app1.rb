arr = []
ans = ""

while ans != "stop"

	print "Введите ваш любимый цвет. Для остановки введите stop.  >>  "

	ans = gets.strip

	if ans == "stop"
		arr.uniq!
		puts "Ваши любимые цвета : #{arr.reverse}"
		exit
	end
	arr << ans
end

