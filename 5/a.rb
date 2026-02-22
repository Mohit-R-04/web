require 'date'

class LibraryItem
  attr_accessor :title, :author, :publication_year

  def initialize(title, author, year)
    @title = title
    @author = author
    @publication_year = year
  end

  def due_date
    Date.today + 14
  end
end


class Book < LibraryItem
  attr_accessor :isbn, :number_of_pages

  def initialize(title, author, year, isbn, pages)
    super(title, author, year)
    @isbn = isbn
    @number_of_pages = pages
  end
end


class DVD < LibraryItem
  attr_accessor :running_time, :genre

  def initialize(title, author, year, time, genre)
    super(title, author, year)
    @running_time = time
    @genre = genre
  end

  def due_date
    Date.today + 3
  end
end


class Magazine < LibraryItem
  attr_accessor :issue_number, :publisher

  def initialize(title, author, year, issue, pub)
    super(title, author, year)
    @issue_number = issue
    @publisher = pub
  end
end

book = Book.new("Ruby Guide","Matz",2020,"123",350)
dvd = DVD.new("Matrix","Wachowski",1999,120,"Sci-Fi")
mag = Magazine.new("Tech Today","John",2024,10,"TechPub")

puts book.isbn
puts dvd.genre
puts mag.publisher