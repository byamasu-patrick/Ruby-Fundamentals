def check_age
	# Using case statement in ruby
	age = 24
	# Defining the case
	case 
		when age == 21
			puts "Your age is #{ age }"
		when age == 24
			puts "Your age is #{ age }"
		else
			puts "You are under age"
	end 
	state = (age == 24) ? true : false
end

def check_name(i)

	name = "Patrick"
	case name
		when 'Paul' then puts "#{i}. Your name is "+ name
		when "Patrick" then puts "#{i}. Your name is "+ name
	end
	return false if i.zero?
	true

end

# Using for loop 0...4 --> 4 will not be included, 0..4 --> 4 will be included
for i in 0..2
	state = check_name(i) if i == 2 
	puts state if i == 2 
	age_state = check_age() if i == 1
	puts age_state if i == 1
end
