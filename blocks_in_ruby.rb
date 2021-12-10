
def max_number(one_param, *numbers, another)
	# Splat example
	numbers[0]
end

puts (max_number("Something", 2,-3, 5, "More"))

#Block concept
2.times{ puts 'Bill\'s data!'}

2.times do |index|
	if index > 0
		puts index
	end
end

2.times { |index| puts index if index > 0 }

def try_yield_implicit
	return "No block" unless block_given?
	yield
	yield
end
# Try the block concept
message = " welcome to ruby on rails"
try_yield_implicit { puts message.lstrip.capitalize }
puts try_yield_implicit

def try_yield_explicit(&block_here)
	return "No block" if block_here.nil?
	block_here.call
	block_here.call
end

try_yield_explicit { puts "Explicit block" }
puts try_yield_explicit
