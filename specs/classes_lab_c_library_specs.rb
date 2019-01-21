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
    @library = Library.new(
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


  def test_get_catalogue #run a comparison between catalogue data and get method
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
        ], @library.get_catalogue())


      end


      def test_find_book_by_title 
        assert_equal({
          title: "spot_goes_to_borstal",
          rental_details: {
            student_name: "Hilda",
            date: "18/01/87"
          }
          }, @library.find_book_by_title("spot_goes_to_borstal"))
        end


        def test_find_rental_info_by_title
          assert_equal({
            student_name: "Hilda",
            date: "18/01/87"
            }, @library.find_rental_info_by_title("spot_goes_to_borstal"))
          end


          def test_add_new_book_title
            assert_equal(@library.find_book_by_title("spot_and_and_the_missing_snooker_balls"),
            @library.add_new_book_title(
              {
                title: "spot_and_and_the_missing_snooker_balls", #absolutely a real title
                rental_details: {
                  student_name: "",
                  date: ""
                }
              }
            )
          )
        end


        def test_modify_rental_details
          @library.modify_rental_details("lord_of_the_flies",
            {
              student_name: "The Daddy",
              date: "06/06/1982"
            }
          )
          assert_equal({
            student_name: "The Daddy",
            date: "06/06/1982"
            },@library.find_rental_info_by_title("lord_of_the_flies"))
          end


        end
