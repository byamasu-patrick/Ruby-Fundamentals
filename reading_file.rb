## Read the file
def read_file(file_name)
	begin
		File.foreach(file_name) do |line|
			puts line
			p line
			p line.chomp
			p line.split(",")
		end
	rescue Exception => e
		puts e.message
		puts "Let pretend that it didn't happen"
	end
end
# Alternative way is 
def read_file_alternative(file_name)
	# Check if the file exist
	if File.exists? file_name
		File.foreach(file_name) do |line|
			p line.chomp
		end
	else
		File.open("file_name.csv", "w") do |file|
			file.puts "Byamasu, Patrick, 2021"
			file.puts "William, Byamasu, 2020"
		end

	end	
end
#puts ENV["EDITOR"]
read_file('datas.txt')
read_file_alternative("file_nam.txt")

puts '---------------------------------------------------------------------------------'
