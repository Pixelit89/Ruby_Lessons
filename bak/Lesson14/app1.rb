class Book
	def initialize
	@hh = {}
	@last_person = ""
	end
	
	attr_accessor :last_person

	def adding options
		#Добавляет пару в хеш
		puts "Такой человек уже есть в базе" if @hh[options[:name]]
		if !@hh[options[:name]]
			@hh[options[:name]] = options[:age] 
			@last_person = "Последний добавленный контакт\nИмя : #{options[:name]}, возраст : #{options[:age]}"
		end
	end

	def show_hash 
		@hh.each do |key, value|
			puts "Имя : #{key}, возраст : #{value}"
		end
	end
	
	def add_person
		
		puts "Введите имя : "
		u_name = gets.strip.capitalize
		
		return "" if u_name == ""
	
		puts "Введите возраст : "
		u_age = gets.to_i
	
		adding :name => u_name, :age => u_age
		
	end

end

b = Book.new
loop do
	break if b.add_person == ""
end
b.show_hash

b.last_person = "gay"

puts b.last_person