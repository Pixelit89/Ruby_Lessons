puts "Введите A : "
a = gets.strip.to_f

puts "Введите B : "
b = gets.strip.to_f

puts "Что будем делать?(+-*/)"
des = gets.strip
res = 0

if des == "/" && b == 0
	puts "Нельзя делить на ноль!!!"
	exit
end

if des == "+"
res = a + b
elsif des == "-"
res = a - b
elsif des == "*"
res = a * b
elsif des == "/"
res = a / b		
end

puts res
