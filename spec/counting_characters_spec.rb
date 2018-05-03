require "counting_characters"

describe CountingCharacters do

  describe ".counts_characters" do

    context "given string, returns string" do
      it "hello returns hello" do
        expect(CountingCharacters.counts_characters("hello")).to eql("hello")
      end
    end
  end
end
