#encoding: cp866
puts "����쪮 ��� �㤥� ������?"
n = gets.to_i

puts "����� �㬬� �㤥� �⪫��뢠�� � �����?"
sum = gets.to_f

x = 0
1.upto(n) do |yy|
	1.upto(12) do |mm|
		x = sum + x
		puts "��� #{yy}, ����� #{mm}, �⫮���� : #{x}$"
   	end
end