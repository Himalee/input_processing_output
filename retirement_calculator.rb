

puts "What is your current age?"
current = gets.chomp


puts "At what age would you like to retire?"
age = gets.chomp

years = age.to_i - current.to_i # how many years left until user can retire
current_year = Time.new.year # the current year
retire = current_year + years.to_i # year in which user can retire

if current.to_i > age.to_i
  puts "You retired #{years.abs} years ago, nice!"
  else
    puts "You have #{years} years left until you can retire."
    puts "It's #{current_year}, so you can retire in #{retire}."
end
