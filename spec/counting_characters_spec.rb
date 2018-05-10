require "counting_characters"

describe CountingCharacters do

  context "counts characters in a string" do
    it "returns number of characters in 'hello' given 'hello'" do
      counting_characters = CountingCharacters.new("hello")
      expect(counting_characters.displays_message).to eql("hello has 5 characters")
    end
  end

end

describe Display do

  context "displays output" do
    it "displays 'Enter a word'" do
      output = StringIO.new
      display = Display.new(output)
      display.display_prompt
      expect(output.string).to eq("Enter a word\n")
    end

    it "displays 'hello has 5 characters'" do
      output = StringIO.new
      input = StringIO.new("hello")
      display = Display.new(output, input)
      display.display_user_output
      expect(output.string).to eq("hello has 5 characters\n")
    end

    it "displays 'hello, world has 12 characters'" do
      output = StringIO.new
      input = StringIO.new("hello, world")
      display = Display.new(output, input)
      display.display_user_output
      expect(output.string).to eq("hello, world has 12 characters\n")
    end

  end

end
