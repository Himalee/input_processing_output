class CountingCharacters

  def counts_characters(words_to_count)
    @characters_count = words_to_count.size
    @words_to_count = words_to_count
    message
    #{word: words_to_count, characters: words_to_count.size}
  end

  def message
    "#{@words_to_count} has #{@characters_count} characters"
  end


end
