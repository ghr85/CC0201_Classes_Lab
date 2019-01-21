# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab Test Specifications
# C Libraries

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../classes_lab_c_library.rb') # require related source code

class TestLibrary < MiniTest::Test
  def setup
#supply dummy data of the finest literature, note this is an array of hashes with nested hashes
    @libary = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "lord_of_the_flies",
          rental_details: {
            student_name: "Ryan",
            date: "01/12/18"
          }
        },
        {
          title: "lord_of_the_dance",
          rental_details: {
            student_name: "Jemma",
            date: "18/01/12"
          }
        },
        {
          title: "spot_goes_to_borstal", #absolutely a real title
          rental_details: {
            student_name: "Hilda",
            date: "18/01/87"
          }
        }
      ]
    )


  end

def test_get_catalogue
  assert_equal(
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "lord_of_the_flies",
        rental_details: {
          student_name: "Ryan",
          date: "01/12/18"
        }
      },
      {
        title: "lord_of_the_dance",
        rental_details: {
          student_name: "Jemma",
          date: "18/01/12"
        }
      },
      {
        title: "spot_goes_to_borstal", #absolutely a real title
        rental_details: {
          student_name: "Hilda",
          date: "18/01/87"
        }
      }
    ], @libary.get_catalogue())


end
end
