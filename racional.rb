# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_reader :n, :d
  def initialize(n,d)  
    @n=n
    @d=d
  end
  
  def to_s    
   a=gcd(@n,@d)
   "La expresión en su mínima expresión es: #{@n/a}/#{@d/a}"
   
  end
  
  def +(other)
    if(@d == other.d)
    Fraccion.new(@n+other.n,@d)
    else
    Fraccion.new((@n*other.d)+(@d*other.n),(@d*other.d))
    end
    
  end
  
   def -(other)
    if(@d == other.d)
    Fraccion.new(@n+other.n,@d)
    else
    Fraccion.new((@n*other.d)-(@d*other.n),(@d*other.d))
    end
    
  end
  
  def *(other)
    Fraccion.new(@n*other.n,@d*other.d)
  end
  
  def /(other) 
  Fraccion.new(@n*other.d,@d*other.n)
  end

  
end

p1, p2=Fraccion.new(2,4), Fraccion.new(3,12)
p3=p1*p2
p4=p1/p2
p5=p1+p2
p6=p1-p2
puts p1
puts p2
puts p3
puts p4
puts p5
puts p6