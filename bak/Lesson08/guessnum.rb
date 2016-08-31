print "Я загадал число от 0 до 100, угадай какое."
puts "У тебя 10 попыток."
num = rand(0..100)

1.upto(10) do |n|

	puts "Попытка номер #{n}. Осталось #{10-n} попыток"

	mynum = gets.strip.to_i

	if num == mynum
		puts "Поздравляю! Ты угадал!"
		exit
	
	elsif num >= mynum
		puts "Нет, не угадал. Больше."

	elsif num <= mynum
		puts "Нет, не угадал. Меньше."

	end
end

puts "Да уж. А тебе не очень-то везет."