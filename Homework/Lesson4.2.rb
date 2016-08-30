puts "Сколько откладываем в месяц?"
x = gets.to_f
puts "Под какой процент?"
p = gets.to_f
puts "Сколько лет будем копить?"
y = gets.to_i

fixin = x

1.upto(y) do |yy|
	12.times do |mm|
		x = x + x * ( p / 100 / 12 )
		x = x + fixin	
	end
	puts "Год #{yy}, отложено : #{x}$"
end