def puts_5_times
	x = 0
	while x < 5
		yield x
		x += 1
	end
end

puts_5_times{ |i| puts "Wow! Index : #{i}" }