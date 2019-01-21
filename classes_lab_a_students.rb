# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab
# A Students

class Student
 def initialize(student_name_string,student_cohort_string)
   @student_name_string = student_name_string #parameters set as instance variables
   @student_cohort_string = student_cohort_string
 end

def get_student_name #manual getter method
  return @student_name_string
end

def get_student_cohort #manual getter method
  return @student_cohort_string
end

def set_student_name(set_student_name_string) #manual setter method
  @student_name_string = (set_student_name_string)
end

def set_student_cohort(set_student_cohort_string) #manual setter method
  @student_cohort_string = (set_student_cohort_string)
end

def talk(patter_string) #simple applied behaviour
  return patter_string
end

def language(language_string)#and again, with interpolation
  return "My favourite programming language is #{language_string}"
end
end
