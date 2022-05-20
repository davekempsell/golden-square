# File: factorial.rb
def factorial(n)
    product = n
    p "at the start, product is #{product}"
    while n > 1
      p "at the start of the loop, n is #{n}"
    #   binding.irb # Mystery new line!
      n -= 1
      p "we subtract 1 to get a new n of #{n}"
      p "and then multiply n (#{n}) by product (#{product})"
      product *= n
      p "we then have the product #{product}"
    end
    p "and finally return the product #{product}"
    product
  end
  
  p factorial(5) 