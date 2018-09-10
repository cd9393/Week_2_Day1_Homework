class Library

  def initialize(books)
    @books = books || []
  end

def get_books
  book_titles = []
  for book in @books
    book_titles << book[:title]
  end
  return book_titles
end

def get_book_info(title)
  for book in @books
    if book[:title] == title
      return book
  end
end
end

def get_rental_details(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
end

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
