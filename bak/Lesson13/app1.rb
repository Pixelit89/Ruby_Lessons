@hh = {}

def add_person options
		#Добавляет пару в хеш
	puts "Такой человек уже есть в базе" if @hh[options[:name]]
	@hh[options[:name]] = options[:age] if !@hh[options[:name]]
end

def show_hash 
	@hh.each do |key, value|
		puts "Имя : #{key}, возраст : #{value}"
	end
end

loop do 
	#Добавлять, пока не введена пустая строка
	
	puts "Введите имя : "
	u_name = gets.strip.capitalize
	
	break if u_name == ""

	puts "Введите возраст : "
	u_age = gets.to_i

	add_person :name => u_name, :age => u_age

end

show_hash