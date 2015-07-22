#encoding=utf-8
#삼각형 체크 프로그램

def tri_check(a,b,c)
  sides = [a,b,c].sort
  return sides[0] + sides[1] > sides[2]
end

while true
  print "Input the first length: "
  input1 = gets.chomp.to_i
	if  input1.to_s == '0' then 
		puts  "break...."
		break
	end
  print "Input the second length: "
  input2 = gets.chomp.to_i
  print "Input the third length: "
  input3 = gets.chomp.to_i

  if tri_check(input1, input2, input3)
    puts "They can be a triangle"
  else
    puts "They cannot be a triangle"
  end
end




#encoding=utf-8
#각 자리 숫자합 프로그램

def sum_digits(num)
  sum = 0
  num_array = num.to_s.split('')
  num_array.each do |x|
    sum = sum + x.to_i
  end
  return sum
end

while true
  print "Enter any natural number: "
  input = gets.chomp.to_i
	if  input.to_s == '0' then 
		puts  "break...."
		break
	end
  puts sum_digits(input)
end



#encoding=utf-8
#비만 여부 판별 프로그램

person_list = Array.new

1.upto(3) do |p|
  print "Person #{p}'s name: "
  p_name = gets.chomp.to_s
	if  p_name == '' then 
		puts  "program is terminated... "
		exit
	end
  print "Person #{p}'s height(cm): "
  p_height = gets.chomp.to_i
  print "Person #{p}'s weight(kg): "
  p_weight = gets.chomp.to_i

  p_bmi = p_weight.to_f / ((p_height.to_f * 0.01) ** 2)
  if p_bmi < 16
    p_category = "Severely underweight"
  elsif p_bmi < 18.5
    p_category = "Underweight"
  elsif p_bmi < 25
    p_category = "Normal"
  elsif p_bmi < 30
    p_category = "Overweight"
  else
    p_category = "Obese"
  end

  person_list << {:name => p_name, :bmi => p_bmi, :category => p_category}
end

person_list.each do |person|
  puts "#{person[:name]}'s BMI is #{person[:bmi]}, and he/she is    #{person[:category]}"
end


=begin
puts "======================="

#encoding=utf-8
#비만도(BMI) 측정 프로그램

while true
  print "Input your height(cm): "
  height = gets.chomp.to_i
  print "Input your weight(kg): "
  weight = gets.chomp.to_i


	if height.to_s == '0' || weight.to_s == '0'  then 
		puts  "program is terminated... "
		exit
	 end

  bmi = weight.to_f / ((height.to_f * 0.01) ** 2)

  puts "Your BMI is: #{bmi}"
end

puts "======================="

#encoding=utf-8
#화씨-섭씨 변환 프로그램

while true
  print "Input the current temperature in Fahrenheit(F): "
  temp_f = gets.chomp.to_i
	if temp_f.to_s == '0' then 
		puts  "program is terminated... "
		exit
	 end
  temp_c = (temp_f - 32) * 5.to_f / 9.to_f

  puts "The current temperature in Celsius is: #{temp_c}C."
end

puts "======================="

lion_resume_list = [
  {:name => "Charles", :isMale => true, :age => 27},
  {:name => "Robert", :isMale => true, :age => 31},
  {:name => "John", :isMale => true, :age => 22},
  {:name => "Miranda", :isMale => false, :age => 29},
  {:name => "Jessica", :isMale => false, :age => 23}
]

puts "Lion resume list"
lion_resume_list.each do |lion|
  puts "*Name: #{lion[:name]}"
  puts "Male: #{lion[:isMale]}"
  puts "Age: #{lion[:age]}"
end

puts "======================="

lion_resume = Hash.new
lion_resume[:name] = "Jessica"
lion_resume[:isMale] = false
lion_resume[:age] = 23
puts "Lion resume"
puts lion_resume

puts "======================="

things = ["rabbit","mouse","snake","lizard"]
things.each do |thing|
  puts "I want to eat some " + thing
end

puts "======================="

number_growl = [3,1,1,3,7,1,6]
puts number_growl.uniq

puts "======================="

lion_name = ["Charles","Robert","John","Miranda","Jessica"]
puts lion_name.inspect
puts "0. Name of lions"
puts lion_name.sort.reverse
puts "1. Weight of lions"
lion_weight = [50,48,67,56,71]
puts lion_weight.sort.reverse

puts "======================="

lion_random = [50,"Grrrr",true,25,false,"Howl",[1,2,3,4,5]]
puts lion_random.inspect
puts lion_random

puts "======================="

def sum(a,b)
sum = 0
a.upto(b) do |x|
  sum = sum + x 
end
puts sum
end

sum(1,10)
sum(11,20)
sum(21,30)

puts "======================="

puts "rock, scissors, paper: "
opponent_hand = "paper"
if opponent_hand == "rock"
  puts "throw paper."
elsif opponent_hand == "scissors"
  puts "throw rock."
else
  puts "throw scissors."
end

puts "======================="


puts "Counting the number of games the lion hunted this month:"
x = 0
while x < 10
  x = x + 2
  puts x
end
puts "I hunted #{x} games this month."

puts "======================="


0.upto(3) do |i|
  puts "Grrrr #{i}"
end

7.downto(2) do |i|
  puts "Howl #{i * 2}"
end

puts "======================="


0.upto(999) do |i|
	puts "[" + i.to_s + "] Hhhhhh"
end

puts "======================="

greeting = "Hello, World"
puts greeting

puts "======================="

print "Jungle"
print 7

puts "======================="

n = 4
puts "i hunted #{n} rabbits this week"

puts "======================="

puts "Type the number of lions: "
input = gets.chomp.to_i
result = input * 4
puts "They all have #{result} legs."

puts "======================="

integer = 4/3
puts "Integer 4 divided by integer 3 equals #{integer}"
float = 4.to_f / 3.to_f
puts "Float 4 divided by float 3 equals #{float}"

puts "======================="

num_to_string = 3.to_s
puts "I am the only lion who has " + num_to_string + " wives."

puts "======================="

greeting = "Hello, Jungle"
#=begin
#Defined the variable above,
#and putting the variable below
#=end
puts greeting

puts "======================="

=end
