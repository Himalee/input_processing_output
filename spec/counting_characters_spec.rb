require "counting_characters"

describe CountingCharacters do

  describe ".counts_characters" do

    context "given string, returns string and number of characters in string" do
      it "hello returns ouput" do
        counting_characters = CountingCharacters.new
        expect(counting_characters.counts_characters("hello")).to eql("hello has 5 characters")
      end
    end

  end


end
