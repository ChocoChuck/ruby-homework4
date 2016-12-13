class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    if @a <= 0 || @b <= 0 || @c <= 0 || ([@a, @b, @c].max * 2) >= (@a + @b + @c)
        raise(TriangleError) 
    end
  end

  def kind
    if @a == @b && @a == @c && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    else
      :isosceles
    end
  end
end

class TriangleError < RuntimeError
end

      
# class Triangle
#   def initialize(int1,int2,int3)
#     @int1 = int1
#     @int2 = int2
#     @int3 = int3
    
#   end

#   # s = (@int1 + @int2 + @int3) / 2.0
#   # ok = (s - @int1) * (s - @int2) * (s - @int3)

#   def kind  
#       if @int1 <= 0 || @int2 <= 0 || @int3 <= 0 
#         raise TriangleError
#       elsif (@int1 == @int2) && (@int3 == @int1) && (@int3 == @int2)
#         :equilateral
#       elsif (@int1 == @int2) || (@int2 == @int3) || (@int1 == @int3)
#         :isosceles
#       else
#         :scalene
#       end
#   end
# end


# class TriangleError <Exception
# end

# @shape = Triangle.new(2,2,2)
# @shape1 = Triangle.new(3,2,2)
# @shape2 = Triangle.new(3,2,1)
 
# puts @shape.kind
# puts @shape1.kind
# puts @shape2.kind



# @Triangle = Triangle.new(1,2,3)
# puts @Triangle.inspect
