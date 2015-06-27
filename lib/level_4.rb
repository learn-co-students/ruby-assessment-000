def grade_for(name, school)
  school[:students].find{|student| student[:name] == name}[:grade]
end

def find_instructor(name, school)
  school[:instructors].find{|e| e[:name] == name}
end

def update_subject_for(name, new_subject, school)
  find_instructor(name, school)[:subject] = new_subject
end

def find_student(name, school)
  school[:students].find{|e| e[:name] == name}
end

def add_student(name, grade, school)
  school[:students] << { name: name, grade: grade }
end

def add_new_property(k, v, school)
  school[k] = v
end