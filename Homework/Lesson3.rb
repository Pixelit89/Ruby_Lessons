# encoding: cp866

print "Введите число : "
num = gets.to_i

num.times {|i| puts "i = #{i}, четное : #{i.even?}"}