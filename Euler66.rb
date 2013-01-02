class Euler66
  
  def initialize(limit)
    @limit = limit
  end
  
  def diophantine(d) 
    return false if Math.sqrt(d) % 1 == 0
    1.upto(@limit) do |y|
      x = Math.sqrt(d * y ** 2 + 1) 
      return x,y if x % 1 == 0
    end
    return false
  end
  
  def diph_low_x(max_d)
    max_x = 0
    1.upto(max_d) do |d|
      x,y = diophantine(d)
      puts "D = #{d} => x: #{x} y:#{y}"
      next if x == false
      max_x = x if x > max_x
    end    
    return max_x
  end
end