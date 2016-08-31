#encoding: cp866
print "Форматировать диск С?(Да/Нет)"
gets
print "Formating disc C:"
1000.times do
	print "."
	x = rand(0.01..0.5)
	sleep x
end