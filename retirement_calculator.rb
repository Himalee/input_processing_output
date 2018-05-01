class RetirementCalculator

def prompt_for_ages
  loop do
    puts "What is your current age?"
    @current = gets.chomp
    break if @current == "quit"
    puts "At what age would you like to retire?"
    @age = gets.chomp
    retirement_output
    break if @age == "quit"
  end
end

def retirement_output
  years_until_retirement = @age.to_i - @current.to_i
  current_year = Time.new.year
  retirement_year = current_year + years_until_retirement.to_i
  if @current.to_i > @age.to_i
    puts "You retired #{years_until_retirement.abs} years ago, nice!" # .abs turns negative into a positive
  else
    puts "You have #{years_until_retirement} years left until you can retire."
    puts "It's #{current_year}, so you can retire in #{retirement_year}."
  end
end

end

rc = RetirementCalculator.new
rc.prompt_for_ages
