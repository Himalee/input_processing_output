require "counting_characters"

describe CountingCharacters do

  context "counts characters in a string" do
    it "returns number of characters in 'hello' given 'hello'" do
      counting_characters = CountingCharacters.new
      expect(counting_characters.counts_characters("hello")).to eql("hello has 5 characters")
    end
  end

  context "displays output" do
    it "displays 'Enter a word'" do
      output = StringIO.new
      display = CountingCharacters.new(output)
      display.display_prompt
      expect(output.string).to eq("Enter a word\n")
    end
  end
end
