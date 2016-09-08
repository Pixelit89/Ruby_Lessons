def show_book book
	#Выводит на экран записную книгу
	puts "=======================================<br>"
	book.each do |key, value|
		puts "<b>#{key}</b>, <i>age :</i> <b>#{value}</b><br>"
		
	end
	puts "=======================================<br>"
end

book1 = {
	'Mike' => 65,
	'Bill' => 61,
	'George' => 24
}
show_book book1

book2 = {
	'Walt' => 50,
	'Bob' => 35,
	'Will' => 43
}
show_book book2

book = book1.merge book2
puts "<body>"
show_book book
puts "</body>"