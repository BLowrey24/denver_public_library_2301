class Library
  attr_reader :name,
              :authors,
              :books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end
end
