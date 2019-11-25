class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1,side_2,side_3)
attributes.each {|key, value| self.kind(("#{key}="), value)}

  end
  def kind
  if side_1==side_2 && side_2 == side_3
      :equilateral
  elsif (side_1==side_2 || side_1 == side_3) && side_1 != side_2 || side_2 != side_3
    :isosceles
  elsif side_1 != side_2 && side_2 != side_3 && side_3 != side_1
      :scalene
  elsif side_1 <= 0 || side_2 <= 0 || side_3 <= 0
    begin
      raise TriangleError
    rescue   TriangleError => error
      puts error
    end
  end

end
class TriangleError < StandardError
  def error
    nil
  end

end
end
