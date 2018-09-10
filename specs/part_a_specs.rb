require("minitest/autorun")
require("minitest/rg")
require_relative("../part_a")

class TestStudent < Minitest::Test

def setup
  @student = Student.new("Craig", "G8")
end

def test_get_name
  assert_equal("Craig", @student.get_name)
end

def test_get_cohort
  assert_equal("G8", @student.get_cohort)
end

def test_set_name
  result = @student.set_name("bob")
  assert_equal("bob",result)
end

def test_set_cohort
  result = @student.set_cohort("G6")
  assert_equal("G6", result)
end

def test_student_talk
  result = @student.talk("Hi")
  assert_equal("Hi", result)
end

def test_students_favorite_language
  result = @student.favourite_language("Python")
  assert_equal("I love Python", result)
end 
end
