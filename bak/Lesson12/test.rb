wins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
a = [1,3,6,7,5]
wins.each do |item|
  puts "WIN" if item.include?(a)
end