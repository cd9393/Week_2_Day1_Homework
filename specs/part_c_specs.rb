require("minitest/autorun")
require("minitest/rg")
require_relative("../extension")

class TestLibrary < Minitest::Test
  def setup
    book_collection = [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title:"harry_potter",
          rental_details: {
            student_name: "Bryan",
            date: "01/04/19"
          }
        },
        {
          title:"through_the_looking_glass",
          rental_details: {
            student_name: "Bob",
            date: "01/01/01"
          }
        }
      ]

      @library = Library.new(book_collection)
  end

  def test_get_books
    result = @library.get_books
    assert_equal(["lord_of_the_rings", "harry_potter", "through_the_looking_glass"], result)
  end

  def test_get_book_info
    expected = {title:"harry_potter",
    rental_details: {
      student_name: "Bryan",
      date: "01/04/19"}}
    result = @library.get_book_info("harry_potter")
    assert_equal(expected , result)
  end

  def test_get_rental_details
    expected = {
      student_name: "Bryan",
      date: "01/04/19"
    }
    result = @library.get_rental_details("harry_potter")
    assert_equal(expected, result)
  end

  def test_add_new_book
    expected = [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title:"harry_potter",
          rental_details: {
            student_name: "Bryan",
            date: "01/04/19"
          }
        },
        {
          title:"through_the_looking_glass",
          rental_details: {
            student_name: "Bob",
            date: "01/01/01"
          }
        },
        {
          title:"game_of_thrones",
          rental_details: {
            student_name: "",
            date: ""
          }
        }

      ]
    result = @library.add_new_book("game_of_thrones")
    assert_equal(expected, result)
  end

  def test_change_rental_details
   @library.change_rental_details("harry_potter","Craig", "04/04/14")
   result = @library.get_rental_details("harry_potter")
    expected = {
        student_name: "Craig",
        date: "04/04/14"
      }
      assert_equal(expected, result)
  end
end
