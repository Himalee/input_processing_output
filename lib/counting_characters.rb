class CountingCharacters

  def initialize(output = $stdout) # output channel
    @output = output
  end


  def counts_characters(words_to_count)
    @characters_count = words_to_count.size
    message(words_to_count)
    #{word: words_to_count, characters: words_to_count.size}
  end

  def message(words_to_count)
    "#{words_to_count} has #{@characters_count} characters"
  end

  def display_prompt
    @output.puts "Enter a word"
  end


end
