
def grade_for(name, hash)
  hash[:students].find{|student| student[:name] == name}[:grade]

end


def find_instructor(name, hash)
  hash[:instructors].find{|instructor| instructor[:name] == name}
end

def update_subject_for(name, newsubject, hash)
  hash[:instructors].find{|instructor| instructor[:name] == name}[:subject]=newsubject
end

def find_student(name, hash)
hash[:students].find{|student| student[:name] == name}
end

def add_student(name, grade, hash)
  hash[:students]<< {:name => name, :grade => grade}
end

def add_new_property(element, ranking, hash)
  hash[element] = ranking
end