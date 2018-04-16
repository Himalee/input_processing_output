prompt = '> '

def output

  puts "Enter a noun:"
  print prompt
  noun = gets.chomp

  puts "Enter a verb:"
  print prompt
  verb = gets.chomp

  puts "Enter an adjective:"
  print prompt
  adjective = gets.chomp

  puts "Enter an adverb:"
  print prompt
  adverb = gets.chomp

  puts "Author:"
  print prompt
  author = gets.chomp

end

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
puts "Written by #{author}."
