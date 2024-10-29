module Comunica
  def comunicar
    puts "Olá, eu sou a classe mãe ou super classe"
  end
end

class Animal
  include Comunica
  attr_reader :nome
  
  def initialize(nome)
    @nome = nome
  end
end


# Aqui está ocorrendo uma herança
class Cachorro < Animal
  attr_reader :raca

  def initialize(nome, raca)
    super(nome)
    @raca = raca
  end

  # Aqui está ocorrendo polimorfismo (sobreescrita)
  def comunicar 
    puts "Au, au, au! Eu sou a classe filha Cachorro"
  end
end

class Gato < Animal
  attr_reader :raca
  
  def initialize(nome, raca)
    super(nome)
    @raca = raca
  end

  # Aqui está ocorrendo polimorfismo (sobreescrita)
  def comunicar 
    puts "Miau, miau! Eu sou a classe filha Gato"
  end
end 

bob = Cachorro.new("Bob", "Poodle")

puts bob.nome
puts bob.raca
bob.comunicar

xaninho = Gato.new("Xaninho", "Siamês")
puts "----------------"
puts xaninho.nome
puts xaninho.raca
xaninho.comunicar