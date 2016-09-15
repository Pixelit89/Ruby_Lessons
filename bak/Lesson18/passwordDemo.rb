puts "Enter your password : "
yourPass = gets.strip

def is_password_weak? passToCheck

	pass = File.open("passwords.txt", "r")
	# output = File.open("size6passwords.txt", "w")
	while line = pass.gets do
		line.strip!
		if passToCheck.include?(line)
			# output.write("#{line}\n")
			return true
		end
	end
	pass.close
	# output.close
	return false
end

if is_password_weak? yourPass
	puts "Your password is weak!"
else
	puts "Your password is not weak."
end
