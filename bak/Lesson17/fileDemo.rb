input = File.open("test.txt", "r")
output = File.open("output.txt", "a")
output.write "Text\n"
output.close