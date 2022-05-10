require 'pry'

class Triangle
  # write code here
  def initialize(l1,l2,l3)
    
    if l1+l2<l3 || l1+l3<l2 || l2+l3<l1

      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif l1<=0 || l2<=0 || l3<=0

      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      @kind = get_type(l1,l2,l3)
    end
  end

  class TriangleError < StandardError
    def message
      "sides dont make triangle"
    end
  end


  def get_type(l1,l2,l3)
    if l1 == l2 && l1 == l3
      return :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3
      return :isosceles
    else
      return :scalene
    end
  end

  def kind
    @kind
  end
end

# t1 = Triangle.new(0,0,0)
# t2 = Triangle.new(1,2,8)
# t1.kind
# t2.kind
