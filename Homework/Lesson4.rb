#encoding: cp866

print "Enter word : "
word = gets.strip
word.length.times do |x|
	print word[x]
	sleep 0.25
	print "-"

end