require "pry"

def grade_for(student, school)
  school[:students].each do |insideHash|
    insideHash.each do |key, value|
      if value == student
        return insideHash[:grade]
      else
      end
    end
  end
end

def update_subject_for(instructor, newSubject, school)
  this = []
  school[:instructors].each do |insideHash|
    insideHash.each do |key, value|
      if value == instructor
        insideHash.store(subject, newSubject)
      else
      end
    end
  end
end

def add_student(student, grade, school)
  school[:students].push({:name => student, :grade => grade})
end

def add_new_property(property, number, school)
  school[property] = number
end

def find_instructor(teacher, school)
  line = ""
  school[:instructors].each do |innerHash|
    innerHash.each do |key, value|
      if value == teacher
        line += innerHash[:subject]
      else
      end
    end
  end
  return line 
end





