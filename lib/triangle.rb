class Triangle
  attr_accessor :side1, :side2,  :side3
  # write code here
  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind

    if self.side1+self.side3<=self.side2 ||  self.side1+self.side2<=self.side3 || self.side2 + self.side3<=self.side1 ||self.side1==0 || self.side3==0 || self.side3==0 || self.side1<0 || self.side2<0 ||  self.side3<0
      raise TriangleError
    end
    if self.side1==self.side2 && self.side2 ==self.side3
      return :equilateral
    end
    if self.side1==self.side3 || self.side2 ==self.side3 ||  self.side1==self.side2
      return :isosceles
    end
    if self.side1!=self.side3 || self.side2 !=self.side3 ||  self.side1!=self.side2
      return :scalene
    end





  end

  class TriangleError < StandardError

  end

end
