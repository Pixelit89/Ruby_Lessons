dictionary = {
	'cat' => 'кот',
	'dog' => 'собака',
	'table' => 'стол',
	'chair' => 'стул',
	'window' => 'окно'
}

loop do

	print 'Enter a word to translate (put nothing and press Enter to exit) : '
	word = gets.strip.downcase
	

	if dictionary.has_key?(word) == false && word != ''

		puts 'No such word in the dictionary.'

	else
		
		dictionary.each do |key, value|

			if word == ''
	
				exit

			elsif word == key
	
				puts "Translation : #{value.capitalize}"
							
			end
		end
	end
end