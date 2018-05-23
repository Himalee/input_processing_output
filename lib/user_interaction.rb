require_relative "counting_characters"

class Display

  def initialize(output = $stdout, input = $stdin, counts)
    @output = output
    @input = input
    @counts = counts
  end

  def start
    display_prompt
    display_user_output
  end

  def display_prompt
    @output.puts "Enter a word"
  end

  def display_user_output
    @user_input = @input.gets.chomp
    @output.puts displays_message
  end

  def displays_message
    @counts.message(@user_input)
  end
end

counts = CountingCharacters.new
display = Display.new(counts)
display.start
