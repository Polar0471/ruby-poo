
# No ruby, por padrão, as classes já vem como privado, por isso é necessário criar uma funcao para adicionar e mostrar o valor dos atributos 
# é necessário criar os métodos getters e setters
class Aluno
  # acessores de atributo
  # attr_accessor, attr_writer, attr_reader
  attr_reader :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  # def mudar_nome(nome)
  #   @nome = nome
  # end

  # def mostra_nome
  #   @nome
  # end
end

a1 = Aluno.new("Rodrigo", 22)

# a1.nome = "Rodrigo"
# a1.idade = 22

puts a1.nome
puts a1.idade