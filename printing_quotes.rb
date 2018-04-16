puts "What is the quote?"
quote = gets.chomp

puts "Who said it?"
author = gets.chomp

puts "#{author.split(/ |\_|\-/).map(&:capitalize).join(" ")} says, \"#{quote.capitalize}\"." # used an escape character 
