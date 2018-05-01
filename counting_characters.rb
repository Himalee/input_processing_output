class CountingCharacters

def count_characters(input)
  input.size
end

# def error(input)
#   /[^a-z]/ =~ input
# end

def empty_string(input)
  /(^$)/ =~ input
end

def characters
  puts "What is the input string?"
  string = gets.chomp
  if empty_string(string)
    puts "Please enter a word"
    characters
  else
    puts "#{string} has #{count_characters(string)} characters."
  end
end

def characters_loop
  puts "Enter a word"
  @string = gets.chomp
  while @string == ""
    characters_loop
  end
  number_of_characters
end

def number_of_characters # also includes empty string - how can I change this?
  puts "#{@string} has #{count_characters(@string)} characters."
end

end

cc = CountingCharacters.new
cc.characters_loop
