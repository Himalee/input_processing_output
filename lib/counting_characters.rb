class CountingCharacters

  def initialize(words_to_count)
    @words_to_count = words_to_count
  end

  def message
    "#{@words_to_count} has #{@words_to_count.size} characters"
  end

  def displays_message
    message
  end
end

class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
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
    "#{@user_input} has #{@user_input.size} characters"
  end
end

# class run
#   require 'display'
#   d = Display.new
#   d.start
# end

# d = Display.new
# d.start
