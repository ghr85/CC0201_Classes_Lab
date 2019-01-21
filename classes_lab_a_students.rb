# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab
# A Students

class Student
 def initialize(student_name_string,student_cohort_string)
   @student_name_string = student_name_string
   @student_cohort_string = student_cohort_string
 end

def get_student_name
  return @student_name_string
end

def get_student_cohort
  return @student_cohort_string
end

def set_student_name(set_student_name_string)
  @student_name_string = (set_student_name_string)
end

def set_student_cohort(set_student_cohort_string)
  @student_cohort_string = (set_student_cohort_string)
end

def talk(patter_string)
  return patter_string
end

end
