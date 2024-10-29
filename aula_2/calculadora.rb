class Calculadora
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
puts resultado

class Aluno
  def notas(*args)
    notas = []
    notas.push(*args)
    notas
  end
end

a1 = Aluno.new
notas_a1 = a1.notas(10, 5.9, 2.5, 9.8)
print notas_a1