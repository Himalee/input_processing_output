require "counting_characters"

describe CountingCharacters do

  describe ".counts_characters" do

    context "given string, returns string and number of characters in string" do
      it "hello returns message to user" do
        counting_characters = CountingCharacters.new
        expect(counting_characters.counts_characters("hello")).to eql("hello has 5 characters")
      end
    end

  end

  describe ".display_prompt" do

    context "displays prompt to user" do
      it "displays 'Enter a word'" do
        output = StringIO.new # new instance of the class String IO, set it to the variable output
        display = CountingCharacters.new(output) # new instance of the CountingCharacters class
        display.display_prompt # method called display_greeting
        expect(output.string).to eq("Enter a word\n") # calls method .string which reads strings
      end
    end
  end


end
