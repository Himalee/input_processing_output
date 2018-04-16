def count(input)
  input.size
end

def error(input)
  /[^a-z]/ =~ input
end

def error2(input)
  /(^$)/ =~ input
end

def characters
  puts "What is the input string?"
  string = gets.chomp
  # count = string.size
  if error2(string)
    puts "Please enter a word"
    characters
  else
    puts "#{string} has #{count(string)} characters"
  end
end

characters
