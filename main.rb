# Using  strings
cur_weather = %Q{It's a hot day outside
				Grab your umbrellas...}

cur_weather.lines do |line|
	line.sub! 'hot', 'rainy'
	puts "#{line.strip}"
end

msg = "Ladies and gentlemen, Good afternoon!"
p msg.methods.grep /case/

#Array of word
arr_word = %w{What a great day today!}
puts arr_word[-3]
puts "#{arr_word.first} --- #{arr_word.last}"
puts arr_word[-2, 1]

arr_word<<"!!!!"
arr_word.push("Ehhhhhh")
puts "#{arr_word}"
arr_word.pop()
puts "#{arr_word}"
#Remove from the beginning
arr_word.shift()

puts "#{arr_word}"
puts "#{arr_word.sort!}"


#p ('k'..'z').to_a.sample(4)
#####
data = 1..20
data.each {|num| puts num}
puts true if data.include? 3
new_arr = data.select {|num| num > 10}.reject { |num| num.odd? }
print new_arr
