# Hashes are index collections of object references 
# They are also called as associative array

users = {'first_name' => 'Byamasu', 'last_name' => 'Patrick'}
#courses = Hash.new { |hash, key| hash[key] =  }
puts "The length of the hash is #{users.length}"
puts "First Name: #{users['first_name']} \nLast Name: #{users['last_name']}"

users['location'] = "Lilongwe, Malawi"

users.each_pair do |key, value|
	puts "Key: #{key} --- Value: #{value}"
end
# Let calculate the word frequency
word_frequency = Hash.new(0)

sentence = "What do you mean by that, boom boom ?"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

print word_frequency
# Using symbols as key for hashes
def add_courses(courses = {name: "Systems Analysis and Design", course_code: "CEN 3504", dept_name: "Computer Engineering"})
	courses[:faculty] = "Applied Siences"
	puts "\n------------------------------------------------------------"
	puts "Course Name: #{courses[:name]}\nCourse Code: #{courses[:course_code]}\nDepartement Name: #{courses[:dept_name]}\nFaculty: #{courses[:faculty]}"
	puts "------------------------------------------------------------"
end

add_courses({:name => "Electromagnetic Field", :course_code => "CEN 3501"})