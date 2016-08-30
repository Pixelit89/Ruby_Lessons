#encoding: cp866
puts "Какую сумму будем откладывать в месяц?"
sum = gets.to_f
puts "Сколько месяцев будем копить?"
n = gets.to_i
x = 0
1.upto(n) do |mm|
	x = sum + x
	puts "Накопления за #{mm} месяц : #{x}$"
   	
end