require "counting_characters"

describe CountingCharacters do

  describe ".counts_characters" do

    context "given string, returns string" do
      it "hello returns hello" do
        expect(CountingCharacters.counts_characters("hello")).to eql("hello")
      end
      it "string returns string" do
        expect(CountingCharacters.counts_characters("world")).to eql("world")
      end
    end
    
  end
end
