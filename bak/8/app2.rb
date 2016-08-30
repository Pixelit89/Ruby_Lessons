students = %w[John Mary Carl Zack Brian Tom Peter Hank Jack Bob]

while true
	num = 0
	
	students.each do |name|
		num = num + 1
		puts "#{num}. #{name}"	
	end
	
	print "Who should be deleted? (№)"
	num = gets.to_i
	
	students.delete_at num-1
end