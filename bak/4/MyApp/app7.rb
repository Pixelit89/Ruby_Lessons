#encoding: cp866
puts "����� �㬬� �㤥� �⪫��뢠�� � �����?"
sum = gets.to_f
puts "����쪮 ����楢 �㤥� ������?"
n = gets.to_i
x = 0
1.upto(n) do |mm|
	x = sum + x
	puts "���������� �� #{mm} ����� : #{x}$"
   	
end