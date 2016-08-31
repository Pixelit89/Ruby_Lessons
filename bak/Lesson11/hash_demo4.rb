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
	dictionary.each do |key, value|
		if word == key

			puts "Translation : #{value.capitalize}"
		
		elsif word == ''

			exit
							
		end
	end

	if dictionary.has_key?(word) == false

		puts 'No such word in the dictionary.'

	end

end