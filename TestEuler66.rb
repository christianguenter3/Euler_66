require_relative 'Euler66'
require 'test/unit'

class TestEuler66 < Test::Unit::TestCase
  
  TEST_DIOPHANTINE = { 2 => [3,2],
                       3 => [2,1],
                       4 => false,
                       5 => [9,4],
                       6 => [5,2],
                       7 => [8,3],
                       13 => [649,180] }
  
  def test_diophantine 
    TEST_DIOPHANTINE.each{|input,output| assert_equal(output,@euler66.diophantine(input))}
  end
  
  def test_diph_low_x
    assert_equal(24248647.0,@euler66.diph_low_x(1000))
  end
  
  def setup
    @euler66 = Euler66.new(100_000_000)
  end
end
