require "user_interaction"

describe Display do

  context "displays output" do
    it "displays 'Enter a word'" do
      output = StringIO.new
      count = CountingCharacters.new
      display = Display.new(output, count)
      display.display_prompt
      expect(output.string).to eq("Enter a word\n")
    end

    it "displays 'hello has 5 characters'" do
      output = StringIO.new
      input = StringIO.new("hello")
      counts = CountingCharacters.new
      display = Display.new(output, input, counts)
      display.display_user_output
      expect(output.string).to eq("hello has 5 characters\n")
    end

    it "displays 'hello, world has 12 characters'" do
      output = StringIO.new
      input = StringIO.new("hello, world")
      counts = CountingCharacters.new
      display = Display.new(output, input, counts)
      display.display_user_output
      expect(output.string).to eq("hello, world has 12 characters\n")
    end
  end
end
