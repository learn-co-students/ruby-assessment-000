require "pry"

def grade_for(student, school)
	school[:students].each do |hash|
		if hash[:name] == student
			return hash[:grade]
		end
	end
end

def find_instructor(instructor, school)
	school[:instructors].each do |hash|
		if hash[:name] == instructor
			return instructor = {:subject => hash[:subject]}
		end
	end
end

def update_subject_for(instructor, subject, school)
	school[:instructors].each do |hash|
		if hash[:name] = instructor
			hash[:subject] = subject
		end
	end
end

def add_student(student, grade, school)
	student_array = school[:students]
	student_array<<{name: student, grade: grade}
end

def find_student(student, school)
	school[:students].each do |hash|
		if hash[:name] == student
			return student = {grade: hash[:grade], name: student}
		end
	end
end

def add_new_property(ranking, rank, school)
	school[:ranking] = rank
end




