require './lib/book'
require './lib/author'

RSpec.describe Author do
  let(:charlotte_bronte) { Author.new({first_name: "Charlotte", last_name: "Bronte"}) }

  describe "#initialize" do
    it 'exists' do
      expect(charlotte_bronte).to be_a(Author)
    end
    
    it 'has attributes' do
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end
  end
end