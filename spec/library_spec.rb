require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  let(:library) { Library.new("I Am a Library") }

  describe '#initialize' do
    it 'exists' do
      expect(library).to be_a(Library)
    end

    it 'has attributes' do
      expect(.name).to eq("I Am a Libray")
      expect(.books).to eq([])
      expect(.authors).to eq([])
    end
  end
end