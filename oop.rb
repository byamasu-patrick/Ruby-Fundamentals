# Creating a class in ruby
# Methods have public access by default
class Person
	def initialize(name, age)
		@name = name
		@age =age
	end
	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end
	# This is a getter
	def name
		@name
	end
	# This is a setter
	def name=(new_name)
		@name = new_name
	end
end

person1 = Person.new("Paul", 26)
puts person1.name
person1.name = "Patrick"
puts person1.name
# p person1.instance_variables
# puts person1.get_info
# p person1.instance_variables
class MathFunction
	def self.double(num)
		times_called; 
		num * 2
	end
	class << self
		def times_called 
			@@times_called ||= 0; @@times_called +=1
		end
	end
end
def MathFunction.triple(number)
	times_called; number * 3
end

puts "\n\n-----------------------------------"

puts MathFunction.double 5
puts MathFunction.triple(3)
puts MathFunction.times_called