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

end
