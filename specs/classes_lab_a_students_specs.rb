# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab Test Specifications
# A Students

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../classes_lab_a_students.rb') # require related source code

class TestStudent < MiniTest::Test

  def setup #set up data to play with
    @student = Student.new("Gordon Renfrew","E28") #supply dummy data
  end

  def test_get_student_name
    assert_equal("Gordon Renfrew", @student.get_student_name)
  end

  def test_get_student_cohort
    assert_equal("E28", @student.get_student_cohort)
  end

  def test_set_student_name
    @student.set_student_name("Holly Fraser")
    assert_equal("Holly Fraser", @student.get_student_name)
  end

  def test_set_student_cohort
    @student.set_student_cohort("G28")
    assert_equal("G28", @student.get_student_cohort)
  end

  def test_talk
    assert_equal("I must now master the power of silence.", @student.talk("I must now master the power of silence."))
  end

end 
