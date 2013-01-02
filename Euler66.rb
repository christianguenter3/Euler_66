class Euler66
  
  def initialize(limit)
    @limit = limit
  end
  
  def diophantine(d) 
    return false if Math.sqrt(d) % 1 == 0
    1.upto(@limit) do |x|
      1.upto(@limit) do |y|
        return x,y if x ** 2 - (d * y ** 2) == 1
      end
    end
    return false
  end
  
  def diph_low_x(max_d)
    max_x = 0
    1.upto(max_d) do |d|
      x,y = diophantine(d)
      next if x == false
      max_x = x if x > max_x
    end    
    return max_x
  end
end