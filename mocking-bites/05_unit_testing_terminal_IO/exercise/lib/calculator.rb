

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts 'Hello. I will subtract two numbers.'
    @io.puts 'Please enter a number'
    number_1 = @io.gets.to_i
    @io.puts 'Please enter another number'
    number_2 = @io.gets.to_i
    @io.puts 'Here is your result:'
    @io.puts "#{number_1} - #{number_2} = #{number_1 - number_2}"
  end

  # private

  # def get_number
  #   response = @io.gets
  #   return response.to_i if response.is_a? Integer
  #   fail "You must enter a number!"
  # end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run