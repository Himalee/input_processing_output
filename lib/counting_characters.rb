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
