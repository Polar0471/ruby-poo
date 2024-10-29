module Operacoes
  def subt(x, y)
    x - y
  end
end

class Calculadora
  include Operacoes

  # função que aceita multiplos argumentos
  def somar(*args)
    lista = []
    lista.push(*args)
    # insere uma soma dentro da lista e retorna o valor desta
    lista.inject(:+)
  end
end

c1 = Calculadora.new
resultado = c1.somar(5, 5, 5)
res_subt = c1.subt(10, 5)
puts resultado
puts res_subt