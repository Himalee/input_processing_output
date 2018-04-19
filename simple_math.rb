def first_number
  puts "What is the first number?"
  @a = gets.chomp # can't check letters agains a float. Need to change user input into a string.
  if @a.to_f < 0
    puts "Please enter a positive number"
    first_number
  elsif check(@a)
    puts "Please enter a positive number"
    first_number
  else
    second_number
  end
end

def second_number
  puts "What is the second number?"
  @b = gets.chomp
  if @b.to_f < 0
    puts "Please enter a positive number"
    second_number
  elsif check(@b)
    puts "Please enter a positive number"
    second_number
  else
    answer
  end
end

def check(input)
  /[a-z]/ =~ input # =~ is known as the "match operator"
                   # can be used to match a string against a regular expression.
end

def answer
  puts "#{@a.to_f} + #{@b.to_f} = #{@a.to_f+@b.to_f}
     #{@a.to_f} - #{@b.to_f} = #{@a.to_f-@b.to_f}
     #{@a.to_f} * #{@b.to_f} = #{@a.to_f*@b.to_f}
     #{@a.to_f} / #{@b.to_f} = #{@a.to_f/@b.to_f}"
end

first_number
