module Rating
	attr_accessor :stars
	def rate(stars = 0)
		@stars ||= 0; @stars = stars
	end
end
module HigherEducation
	class Courses
		attr_reader :sem_num
		attr_accessor :course_name, :course_code, :dept_name, :faculty_name # Getters and setters
		
		def initialize(course_name, course_code, dept_name, faculty_name, sem_num)
			@course_name = course_name
			@course_code = course_code
			@dept_name = dept_name
			@faculty_name = faculty_name
			self.sem_num = sem_num # Call to method sem_num=
		end
		# Setter
		def sem_num= (new_sem_num)
			@sem_num ||= 5 # Default
			@sem_num = new_sem_num unless new_sem_num > 8
		end
		class << self
			def univ_name
				@@univ_name ||= "University of Livingstonia"
			end
		end
		include Rating
	end
end

course1 = HigherEducation::Courses.new("Systems Analysis and Design", "CEN 3504", "Computer Engineering",
	"Applied Sciences", 120)
puts course1.sem_num
course1.sem_num = 6
course1.rate(5)
puts course1.sem_num
puts "--------------------------------------------------------------"
puts "University Name: #{HigherEducation::Courses.univ_name} ------- Rating #{course1.stars}"
puts "Course Name: #{course1.course_name}"
puts "Course Code: #{course1.course_code}"
puts "This course is offered in semester #{course1.sem_num}"
puts "--------------------------------------------------------------"

