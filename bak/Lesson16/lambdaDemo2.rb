add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

#если до 300 то +10
#если до 600 то +20
#от 600 и выше -5

hh = {
	111 => add_10,
	222 => add_10,
	333 => add_20,
	444 => add_20,
	555 => add_20,
	666 => sub_5,
	777 => sub_5,
	888 => sub_5,
	999 => sub_5
}
balance = 100
puts "Зачислено #{balance}$"
loop do |x|
	
	a = rand(100..999)
	puts "Выпало #{a}"

	if hh[a]
		balance = hh[a].call balance
	end

	puts "На счете #{balance}$"
	puts "Нажмите Enter чтобы продолжить..."
	gets
end