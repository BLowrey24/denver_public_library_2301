require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  let(:library) { Library.new("I Am a Library") }
  let(:author) { Author.new({first_name: 'J.K.', last_name: 'Rowling'}) }

  describe '#initialize' do
    it 'exists' do
      expect(library).to be_a(Library)
    end

    it 'has attributes' do
      expect(library.name).to eq("I Am a Library")
      expect(library.books).to eq([])
      expect(library.authors).to eq([])
    end
  end

  describe '#add_author' do
    it 'adds a new author to the authors array and the authors books to the books array' do
      harry_potter_1 = author.write('Harry Potter and the Philosopher Stone', '1997')
      harry_potter_2 = author.write('Harry Potter and the Chamber of Secrets', '1998')
      library.add_author(author)

      expect(library.authors).to eq([author])
      expect(library.books).to eq([harry_potter_1, harry_potter_2])
    end
  end
end