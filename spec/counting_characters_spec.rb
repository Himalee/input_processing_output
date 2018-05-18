require "counting_characters"

describe CountingCharacters do

  context "counts characters in a string" do
    it "returns number of characters in 'hello' given 'hello'" do
      counting_characters = CountingCharacters.new
      expect(counting_characters.message("hello")).to eql("hello has 5 characters")
    end
  end
end
