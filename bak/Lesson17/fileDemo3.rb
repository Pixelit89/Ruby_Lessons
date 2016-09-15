input = File.open("task.txt", "r")
arr = []
sum = 0

while (line = input.gets)
	a = line.split(",")
	arr << a[1].to_i
end

arr.each { |item| sum += item }

puts "Total income = #{sum}"

sum = 0

arr.each_with_index do |item, i|
	sum += item if i < 6
end

puts "First half-year income = #{sum}"