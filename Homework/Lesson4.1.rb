#encoding: cp866
puts "Сколько лет будем копить?"
n = gets.to_i

puts "Какую сумму будем откладывать в месяц?"
sum = gets.to_f

x = 0
1.upto(n) do |yy|
	1.upto(12) do |mm|
		x = sum + x
		puts "Год #{yy}, месяц #{mm}, отложено : #{x}$"
   	end
end