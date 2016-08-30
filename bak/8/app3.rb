list = []

def add_name(name, age)
	person = []
	person << name
	person << age
	person
end

def display_list list
	num = 0
	list.each do |x|
		num = num + 1
		puts "#{num}. #{x[0]}, #{x[1]}"
	end
end

def remove_name (list, id)
	list.delete_at id-1
	list
end

while true
	person = []
	print "Who you want to add? "
	name = gets.strip
	print "Age? "
	age = gets.to_i

	if name == "" || age == ""
		break	
	end
	
	list << add_name(name, age)

end

display_list list

print "Who you want to kill? "
id = gets.to_i
remove_name(list, id)

display_list list