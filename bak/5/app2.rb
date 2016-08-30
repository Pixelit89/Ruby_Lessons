puts "Введите ваше любимое число : "
fav = gets.to_i
puts "Сколько лет будем играть?"

y = gets.strip.to_i

1.upto(y) do |i|
	print "Год #{i} : "
	x = rand(1..50)
	if x == fav
		print "Вы выйграли!"
		else
		print "Вы проиграли."
	end
	puts

end