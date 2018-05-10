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

  def display_prompt
    @output.puts "Enter a word"
  end

  def get_user_input
    @input.gets.chomp
  end

  def display_user_output
    @input.gets.chomp
    @output.puts displays_message
  end

  def displays_message
    "#{@input.string} has #{@input.size} characters"
  end
end


cc = CountingCharacters.new("hello")
cc.displays_message
