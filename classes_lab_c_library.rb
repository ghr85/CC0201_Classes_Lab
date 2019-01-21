# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab Test Specifications
# C Library
class Library

  def initialize(library_catalogue_array) #initialise the library of books in an array
    @library_catalogue_array = library_catalogue_array
  end

  def get_catalogue #return the full catalogue info
    return @library_catalogue_array
  end

  def find_book_by_title(book_title_string) #take book title as parameter
    for book_element in @library_catalogue_array #loop through catalogue array
      if book_element[:title] == book_title_string #if Title KVP matches book title
        return book_element
      end
    end
  end

  def find_rental_info_by_title(book_title_string) #take book title as parameter
    for book_element in @library_catalogue_array #loop through catalogue array
      if book_element[:title] == book_title_string #if Title KVP matches book title
        return book_element[:rental_details]
      end
    end
  else return nil # nil just seems cleaner than implicit return
  end

  def add_new_book_title(new_book_hash) #take new bok hash as parameter
    @library_catalogue_array<<new_book_hash #add new bok hash to array, plain sailing
  end

  def modify_rental_details(book_title_string,rental_details_hash) #take title and rental details
    for book_element in @library_catalogue_array #loop through array
      if book_element[:title] == book_title_string #match title KVP to title string
        book_element[:rental_details] = rental_details_hash #update rental details hash
      end
    end
    return nil # again keep it clean
  end
end
