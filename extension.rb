class Library

  def initialize(books)
    @books = books || [] # this allows the intitialize to continue to work if an empty array is passed in. if no "books" is passed in @books will be assigned an empty array []
  end

def get_books
  book_titles = []
  for book in @books
    book_titles << book[:title]
  end
  return book_titles
end

def get_book_info(title)
  #found_book = nil
  for book in @books
    if book[:title] == title
      return book
      #found_book = book
  end
end
# return found_book
end

# comments show alternative way of running get book. this allows a nil value to be returned if book not found

def get_rental_details(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
end
# shorter way of doing it would be to use found book method already written book = get_book_info(title) and then return book[:rental_details]

def add_new_book(title)
  @books.push({title: title,
  rental_details: {
    student_name: "",
    date: ""}})
  end

  def change_rental_details(title, name, due_date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = due_date
      end
    end
  end
end
# again it is shorter to use the get_book_info method instead of re using a for loop.
# details can be changed in one line - book[:rental_details] = {student_name: name, date: due_date}
