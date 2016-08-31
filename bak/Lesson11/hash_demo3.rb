phone_book = {}

puts 'Fill your phone book. Press enter to finish.'

loop do

	print 'Enter name : '
	pname = gets.strip.capitalize

	if pname == ''
		puts "Phone book is finished."
		break
	end
	
	print 'Enter phone number : '
	phone = gets.to_i

	if phone == 0
		puts "Phone book is finished."
		break
	end

	phone_book[pname] = phone
	
end

phone_book.each do |key, value|

	puts "Name : #{key}, Phone : #{value}"

end