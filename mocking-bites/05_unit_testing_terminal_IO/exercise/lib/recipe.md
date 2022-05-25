

# class InteractiveCalculator

# methods
initialize

def run
puts 'Hello. I will subtract two numbers.'
puts 'Please enter a number'
number_1 = gets.chomp.to_i
puts 'Please enter another number'
number_2 = gets.chomp.to_i
puts 'Here is your result:'
puts "#{number_1} - #{number_2} = #{number_1 - number_2}"
end