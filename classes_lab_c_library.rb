# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab Test Specifications
# C Library
class Library

  def initialize(library_catalogue_array)
    @library_catalogue_array = library_catalogue_array
  end

  def get_catalogue
    return @library_catalogue_array
  end

   def find_book_by_title(book_title_string)
     for book_element in @library_catalogue_array
      if book_element[:title] == book_title_string
        return book_element
      end
      end
     end

end
