class Library
  attr_reader :name,
              :authors,
              :books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do 
      |book| @books << book
    end
  end

  def publication_time_frame_for(author)
    author_books = author.books
    start_year = author_books.min_by { |book| book.publication_year.to_i }.publication_year
    end_year = author_books.max_by { |book| book.publication_year.to_i }.publication_year
    { start: start_year, end: end_year }
  end
end
