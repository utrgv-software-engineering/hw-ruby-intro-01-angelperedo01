# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
    sum = 0
    arr.each{|x| sum += x}
    return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.sort!.reverse!
  max1 = arr[0].nil? ? 0 : arr[0]
  max2 = arr[1].nil? ? 0 : arr[1]

  return max1+max2
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr[1].nil?
  arr.each do |x|
      return false if x == arr[arr.length()/2+1]
      y = n - x;
      return true if arr.include?(y)
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
    isVowel = "aeiou!@#$%^&*()"
    s.downcase!
    return false if s == ""
    isVowel.length.times{|i| return false if isVowel[i] == s[0]}
    return true
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false if s == ""
  return false if s[0].eql?("a")
  newStr = s.reverse
  return true if s.eql?("0")
  return true if newStr[2].eql?("1") && newStr[0].eql?("0") 
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
   attr_accessor :isbn
   attr_accessor :price
    
   def initialize(isbn, price)
       @isbn = self.isbn?(isbn)
       @price = self.price?(price)
   end
    
   def isbn?(isbn)
       raise ArgumentError.new() if isbn.eql?("")
       return isbn
   end    
    
   def price?(price)
       raise ArgumentError.new() if price <= 0
       return price
   end    
  
   def price_as_string()
       return "$#{'%.2f' % @price}"
   end
end
