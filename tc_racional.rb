# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

    def setup
      @p1 = Fraccion.new(2, 4)
      @p2 = Fraccion.new(3, 12)
    end

    def test_simple
      assert_equal("La expresión en su mínima expresión es: 1/2",@p1.to_s)
      assert_equal("La expresión en su mínima expresión es: 1/4",@p2.to_s)
      assert_equal("La expresión en su mínima expresión es: 3/4",(@p1+@p2).to_s) 
      assert_equal("La expresión en su mínima expresión es: 1/4",(@p1-@p2).to_s) 
      assert_equal("La expresión en su mínima expresión es: 1/8",(@p1*@p2).to_s) 
      assert_equal("La expresión en su mínima expresión es: 2/1",(@p1/@p2).to_s) 
    end
    
    def test_failure
      assert_equal("La expresión en su mínima expresión es: 2/4",@p1.to_s) #No está minimizada
    end
        
    
end
