dict = {
	'cat' => ['кот', 'кошка'],
	'dog' => ['собака'],
	'girl' => ['девочка', 'девушка'],
	'man' => ['человек', 'мужчина'],
	'woman' => ['женщина'],
	'notebook' => ['блокнот', 'ноутбук'],
	'milk' => ['молоко']
}

loop do

	print 'Enter a word to translate (put nothing and press Enter to exit) : '
	word = gets.strip.downcase
	

	if dict.has_key?(word) == false && word != ''

		puts 'No such word in the dictionary.'

	else
		
		dict.each do |key, value|

			if word == ''
	
				exit

			elsif word == key
				
				puts "\tThis word has #{value.length} translates :"
				value.each_with_index do |item, index|

					puts "\t#{index + 1}. #{item}."

				end			
			end
		end
	end
end