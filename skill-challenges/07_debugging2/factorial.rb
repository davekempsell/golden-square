# File: factorial.rb
def factorial(n)
    product = n
    while n > 1
      binding.irb # Mystery new line!
      n -= 1
      product *= n
    end
    
    product
  end
  
  p factorial(5) 