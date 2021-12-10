a = 7

if a == 6
	puts "a is equal to 6"
elsif a > 6
	puts "a is greater than 6"
else
	puts a
end

index = 0
while index < a
	puts index
	index += 1
end

iterator = 0

until iterator >= 10
	puts "Hello, world! #{iterator + 1}" if iterator == 5 and a == 7
	iterator += 1
end
	
length = 2

length *= 2 while length < 3
puts "The length is: #{length}"
